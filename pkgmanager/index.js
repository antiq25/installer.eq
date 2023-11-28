#!/usr/bin/env node

import axios from 'axios';
import fs from 'fs/promises';
import path from 'path';
import semver from 'semver';

function logVerbose(message) {
  console.log(message);
}

async function getPackageData(packageName) {
  try {
    const response = await axios.get(`https://registry.npmjs.org/${packageName}`);
    logVerbose(`Fetched data for ${packageName}`);
    return response.data;
  } catch (error) {
    console.error(`Failed to fetch data for ${packageName}: ${error.message}`);
    return null;
  }
}

async function getLatestVersion(packageData) {
  const latestVersion = packageData['dist-tags'].latest;
  logVerbose(`Latest version of ${packageData.name} is ${latestVersion}`);
  return latestVersion;
}

async function updateDependenciesRecursively(packageJson, depType) {
  if (!packageJson[depType]) {
    logVerbose(`No ${depType} found in package.json`);
    return {};
  }

  const updates = {};

  for (const [packageName, currentVersion] of Object.entries(packageJson[depType])) {
    try {
      const packageData = await getPackageData(packageName);
      if (!packageData) continue;

      const latestVersion = await getLatestVersion(packageData);
      if (!semver.valid(latestVersion)) {
        throw new Error(`Invalid latest version: ${latestVersion}`);
      }
      if (!semver.validRange(currentVersion)) {
        throw new Error(`Invalid current version range: ${currentVersion}`);
      }
      if (semver.gt(latestVersion, currentVersion) && !semver.satisfies(latestVersion, currentVersion)) {
        updates[packageName] = `^${latestVersion}`;
        logVerbose(`Updated ${packageName} to version ${latestVersion}`);
      } else {
        logVerbose(`Kept ${packageName} at version ${currentVersion}`);
      }
    } catch (error) {
      console.error(`Error processing ${packageName}@${currentVersion}: ${error.message}`);
    }
  }

  return updates;
}




async function fetchAndUpdatePackageJson(packageJsonPath) {
  logVerbose(`Reading package.json from ${packageJsonPath}`);
  const packageJsonContent = await fs.readFile(packageJsonPath, 'utf8');
  const packageJson = JSON.parse(packageJsonContent);

  logVerbose('Updating dependencies...');
  const dependencies = await updateDependenciesRecursively(packageJson, 'dependencies');
  logVerbose('Updating devDependencies...');
  const devDependencies = await updateDependenciesRecursively(packageJson, 'devDependencies');

  const updatedPackageJson = {
    ...packageJson,
    dependencies: { ...packageJson.dependencies, ...dependencies },
    devDependencies: { ...packageJson.devDependencies, ...devDependencies },
  };

  logVerbose('Writing updated package.json...');
  await fs.writeFile(packageJsonPath, JSON.stringify(updatedPackageJson, null, 2));
  logVerbose('package.json has been updated.');
}

async function main() {
  const packageJsonPath = path.join(process.cwd(), 'package.json');

  try {
    await fs.access(packageJsonPath);
    await fetchAndUpdatePackageJson(packageJsonPath);
  } catch (error) {
    console.error(`An error occurred: ${error.message}`);
    process.exit(1);
  }
}

main();
