$global:DOT_POSH_FILES = "$HOME\dotfiles\dot-posh\"
$global:DOT_POSH = "$HOME\dot-posh.ps1"

# load utils
. "$DOT_POSH_FILES\utils.ps1"

# load aliases
. "$DOT_POSH_FILES\aliases.ps1"

# init oh-my-posh
oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\half-life.omp.json" | Invoke-Expression

# init fnm
fnm env --use-on-cd --shell powershell | Out-String | Invoke-Expression

### Command History ###
Import-Module PSReadLine
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView

