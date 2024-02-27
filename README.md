#Make a backup of your current Neovim files:

required

``` bash
mv ~/.config/nvim{,.bak}

mv ~/.local/share/nvim{,.bak}
mv ~/.local/state/nvim{,.bak}
mv ~/.cache/nvim{,.bak}
```

#Install the new Neovim files and clone the repo:

``` bash
git clone https://github.com/delacerate/nv-dotfiles.git ~/.config/nvim
```

