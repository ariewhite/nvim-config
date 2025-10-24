# Installation

## Prerequisites
- Git
- Neovim (>= 0.11.0)
- Nerd Font

## Quick Install
### Unix
```bash
# backup and install config
bash -c "$(curl -fsSL https://raw.githubusercontent.com/ariewhite/nvim-config/master/install.sh)"
```
### Windows (pwsh)

#### Back up
```pwsh
# required
Move-Item $env:LOCALAPPDATA\nvim $env:LOCALAPPDATA\nvim.bak

# optional
Move-Item $env:LOCALAPPDATA\nvim-data $env:LOCALAPPDATA\nvim-data.bak
```

#### Clone repo
```pwsh
git clone https://github.com/ariewhite/nvim-config $HOME\AppData\Local\nvim
```
#### Remove .git folder
```pwsh
Remove-Item $env:LOCALAPPDATA\nvim\.git -Recurse -Force
```


