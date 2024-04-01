param (
    [string]$userChoice = $args[0]
)

function condition {
    param (
        [string]$shortcut,
        [string]$folder
    )

    # Use Push-Location instead of pushd
    if ($userChoice -eq $shortcut) {
        Push-Location $folder
        Write-Host "Push-Location $folder"
    }

    if ([string]::IsNullOrEmpty($userChoice) -or $userChoice -eq $shortcut) {
        Write-Host "$shortcut => $folder"
    }
}

# The format is:
# & { condition SHORTCUT FOLDER }

& { condition "code" "C:\Users\vn\Desktop\Code" }
& { condition "unity" "C:\Users\vn\Desktop\Code\Unity\School" }