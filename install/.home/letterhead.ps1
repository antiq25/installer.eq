# Function to search for templates within a given folder
function SearchTemplates($folderPath) {
    $templateFiles = Get-ChildItem -Path $folderPath -Filter "*.dotx" -Recurse
    $templateFiles | ForEach-Object {
        Write-Host "Template found: $($_.FullName)"
    }
}

# Get the user's template folder location from the Word Options registry key
$wordOptionsKeyPath = "HKCU:\Software\Microsoft\Office\{0}\Word\Options"
$wordVersion = (Get-ItemProperty -Path "HKCU:\Software\Microsoft\Office" | Get-ItemProperty | Where-Object { $_.PSChildName -like 'Word*' }).PSChildName
$wordOptionsKey = $wordOptionsKeyPath -f $wordVersion

$templateFolderRegistryValue = Get-ItemPropertyValue -Path $wordOptionsKey -Name "UserTemplates"

if ($templateFolderRegistryValue) {
    $templateFolderPath = $templateFolderRegistryValue -replace "%USERNAME%", $env:USERNAME

    if (Test-Path $templateFolderPath) {
        Write-Host "Word template folder found at: $templateFolderPath"

        # Search for letterhead templates
        $letterheadFolderPath = Join-Path $templateFolderPath "Letterhead"
        if (Test-Path $letterheadFolderPath) {
            Write-Host "Letterhead templates found in folder: $letterheadFolderPath"
            SearchTemplates $letterheadFolderPath
        }
        else {
            Write-Host "Letterhead templates folder not found."
        }

        # Search for all Word templates
        Write-Host "Searching for all Word templates in folder: $templateFolderPath"
        SearchTemplates $templateFolderPath
    }
    else {
        Write-Host "Word template folder does not exist."
    }
}
else {
    Write-Host "Unable to retrieve Word template folder location."
}

