# dotfiles

Follow the instructions below for setting up individual applications. Run all commands from the home directory.

Folders are made for each app/package separately and follow the GNU Stow directory structure.

## zsh configuration

If zsh is not installed run `sudo pacman -S zsh`.

To change default shell, use `chsh -s $(which zsh)`.

Check if shell is changed using `echo $SHELL`.

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

## neovim configuration

Install Vim-plug package manager:

```
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

Run `:PlugInstall` from inside nvim.

## bat configuration

Run `bat cache --build` to rebuild bat's cache.

## To Do

- [ ] add polybar backlight module
- [ ] add polybar bluetooth module
- [ ] add polybar usb module

- [ ] fix cannot use volume and brightness keys on keyboard

- [ ] fix cannot change brightness with xrandr in lock.sh

- [ ] optimize config for multiple monitors

- [ ] optimize for laptop lid closing
