param (
    [string]$userChoice = $args[0]
)

function condition {
    param (
        [string]$shortcut,
        [string]$folder
    )

    if ($userChoice -eq $shortcut) {
        Push-Location $folder
        Write-Host "Push-Location $folder"
    }

    if ([string]::IsNullOrEmpty($userChoice) -or $userChoice -eq $shortcut) {
        Write-Host "$shortcut => $folder"
    }
}

# The format is,
# & { condition "SHORTCUT" "C:\FILEPATH" }

& { condition "code" "C:\Users\exampleUser\Desktop\Code" }
& { condition "unity" "C:\Users\exampleUser\Desktop\Code\Unity\School" }
