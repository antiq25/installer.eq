const axios = require('axios');

const packageJson = {
  "dependencies": {
    "@mui/material": "latest",
    "@emotion/react": "latest",
    "@emotion/styled": "latest",
    "@material-ui/icons": "^4.9.1",
    "@material-ui/lab": "^4.0.0-alpha.56",
    "axios": "^0.20.0",
    "bcryptjs": "^2.4.3",
    "cookie-parser": "^1.4.5",
    "dotenv": "^8.2.0",
    "express": "^4.17.1",
    "js-cookie": "^2.2.1",
    "jsonwebtoken": "^8.5.1",
    "mongoose": "^5.10.9",
    "next": "^9.5.5",
    "next-redux-wrapper": "^6.0.2",
    "nprogress": "^0.2.0",
    "passport": "^0.4.1",
    "passport-jwt": "^4.0.0",
    "passport-local": "^1.0.0",
    "react": "^16.12.0",
    "react-dom": "^16.12.0",
    "react-redux": "^7.2.1",
    "redux": "^4.0.5",
    "redux-devtools-extension": "^2.13.8",
    "redux-thunk": "^2.3.0",
    "typescript": "^4.0.3"
  },
  "devDependencies": {
    "@types/bcryptjs": "^2.4.2",
    "@types/cookie-parser": "^1.4.2",
    "@types/express": "^4.17.8",
    "@types/js-cookie": "^2.2.6",
    "@types/mongoose": "^5.7.36",
    "@types/node": "^12.12.21",
    "@types/nprogress": "^0.2.0",
    "@types/passport": "^1.0.4",
    "@types/passport-jwt": "^3.0.3",
    "@types/passport-local": "^1.0.33",
    "@types/react": "^17.0.44",
    "@types/react-dom": "^17.0.11",
    "@types/react-redux": "^7.1.9",
    "nodemon": "^2.0.6",
    "ts-node": "^9.1.1"
  }
};

async function getLatestVersion(packageName) {
  try {
    const response = await axios.get(`https://registry.npmjs.org/${packageName}`);
    return response.data['dist-tags'].latest;
  } catch (error) {
    console.error(`Failed to fetch version for ${packageName}`, error);
    return null;
  }
}

async function fetchLatestVersions() {
  const newPackageJson = {
    "dependencies": {},
    "devDependencies": {}
  };

  for (const depType of ['dependencies', 'devDependencies']) {
    for (const [packageName, currentVersion] of Object.entries(packageJson[depType])) {
      const latestVersion = await getLatestVersion(packageName);
      if (latestVersion) {
        newPackageJson[depType][packageName] = `^${latestVersion}`;
      }
    }
  }

  console.log(JSON.stringify(newPackageJson, null, 2));
}

fetchLatestVersions();
