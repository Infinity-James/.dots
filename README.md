### Basic (zsh, tmux, vim)
![Img](/screenshots/basic.png "Basic screenshot")

### Full (zsh, tmux, vim, nerdtool, mjolnir)
![Img](/screenshots/full.png "Full screenshot")

It's a bunch of zsh, vim, and tmux config files.

## Terminal config

Some basic stuff:
  - iTerm2 ("Test Release" for borderless window, I haven't noticed any bugs).
  - Homebrew.
  - `brew install tmux vim zsh` (you might have to add /usr/local/bin/zsh to /etc/shells)
  - `chsh -s $(which zsh)`
  - `brew install coreutils` (for fancy ls colours mainly…)

You will probably want to delete the ruby/node specific stuff from my zshrc.

You should probably clone as `.dots` in your home dir:

Too many things rely on it.

```
git clone --recursive git@github.com:will118/slyme.git ~/.dots
```

In iTerm, import the `base16-eighties.dark.itermcolors` file:

`iTerm2 > Preferences > Profiles > Color > Color Presets...`

Then select it.

Also the font I use `FiraCode` is included, I used the Retina variant but I don't even know if they're different.

Set it in iTerm profile "Text" tab etc… Mine is 13pt.

Run all these scripts (or copy and paste the commands, they're all symlinks).
```
./install_zsh_stuff.sh
./install_vim_stuff.sh
./symlink_config_files.sh
```

also

```
brew install zsh-syntax-highlighting
```


Install vim-plug "A minimalist Vim plugin manager."
```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

Then in vim do `:PlugInstall`

### iTerm snapping


![Img](/screenshots/disable_snapping.png "Disable snapping")

### Troubleshooting

Some users have issues with colours in vim and tmux+vim. The text width line
was bright green in one case, and selecting brackets wasn't great.

If you have this issue, try deleting `~/Library/Preferences/com.googlecode.iterm2.plist`.

Also maybe try using Fira Code.

## Dependencies

- iterm2 beta
  - borderless window option
- zsh
- tmux
- vim/neovim
