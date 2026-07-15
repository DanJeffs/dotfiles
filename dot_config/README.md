______________________________________________

## Setup

# Main Steps:

## (1) Install Brew (macOS package manager)
Go here: https://brew.sh/
they'll probably tell you to do this:  
`/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`  

## (2) Install Terminal Emulator
1. `brew tap wez/wezterm`  
2. `brew install --cask wez/wezterm/wezterm` 

## (3)Theme PowerLevel10k -  
1. `brew install --cask font-meslo-for-powerlevel10k`
2. `brew install powerlevel10k`

## (3) Install ZSH Enhancements. 
`brew install zsh-completions zsh-autosuggestions zsh-syntax-highlighting`

## (4) Clone 
Clone repo into specific folder: `git clone https://github.com/DanJeffs/dotfiles.git ~/.config`

## (5) Install Things  
1.  `brew update`
	`brew upgrade`
	`brew bundle --file="~/.config/Brewfile"`   
2. 	`$(brew --prefix)/opt/fzf/install`

## (6) Set-Up DotFiles
2. Remove any `.zsh*` files from your `~` directory.  Check there are none: `ls ~/.zsh*`
3. Symlink the zsh file that will say to look in that folder: `ln -s ~/.config/zsh/.zshenv ~/.zshenv`

___________________________

# Optional: 
## Install Neovim
`brew install neovim`
## Install Node
`brew install node`
## Install Rust 
Go here for install instructions: https://www.rust-lang.org/tools/Install  
They will probably be this: `curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh`

________________________________


## .config-dotfiles
(.)dotfiles - localized to .config - requires symlinking .zshenv in order to add paths to some files in it

Will expand this later, but for now it is notable that this localization of (.)dotfiles depends on two things.
1) exporting paths from `.zshenv` to point to many of the files that would otherwise be elsewhere (likely right in $HOME)
2) symlinking `.zshenv` itself into $HOME so that it can both be found and git versioned.  
  The command for that is: `ln -s ~/.config/zsh/.zshenv ~/.zshenv`
