# Implement your module commands in this script.


# Export only the functions using PowerShell standard verb-noun naming.
# Be sure to list each exported functions in the FunctionsToExport field of the module manifest file.
# This improves performance of command discovery in PowerShell.

function LoadDogNames {
    $female = Get-Content -Raw -Path "$PSScriptRoot\female-dog-names.json" | ConvertFrom-Json
    $male = Get-Content -Raw -Path "$PSScriptRoot\male-dog-names.json" | ConvertFrom-Json
    $female + $male
}

function Get-DogName {
    LoadDogNames | Get-Random
}

Export-ModuleMember -Function *-*
