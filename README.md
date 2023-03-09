# dotfiles

Follow the instructios below for setting up individual applications

## zsh configuration

If zsh is not installed run `sudo pacman -S zsh`

To change default shell, use `chsh -s $(which zsh)`

Check if shell is changed using `echo $SHELL`

copy `.zshrc` and `.zsh` folder to home directory.

Install ohmyzsh with the below command:

```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

Install powerlevel10k theme:

```
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```

Install zsh-autosuggestions user plugin:

```
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

Install zsh-syntax-highlighting user plugin:

```
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

