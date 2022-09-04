These dotfiles are optimized for bash, tmux, vim, and [alacritty](https://github.com/alacritty/alacritty).

The repo includes [liquidprompt](https://github.com/nojhan/liquidprompt), the tmux plugin manager
[tpm](https://github.com/tmux-plugins/tpm) and the vim plugin manager [Vundle](https://github.com/VundleVim/Vundle.vim)
as submodules, so make sure to clone with `--recursive` or run `git submodule update --init --recursive` after cloning.

# Installation

## Manual

Symlink the files your home directory then install the Vim and tmux plugins by running:

```
vim --clean '+source ~/.vimrc' +PluginInstall +qall
.tmux/plugins/tpm/scripts/install_plugins.sh
```

## Automatic

Alternatively, you can use `symlinkctl` to do all of that for you:

```
./symlinkctl enable
```

And to remove the symlinks:

```
./symlinkctl disable
```

`symlinkctl` tries to be smart, portable, and non-destructive (eg, by backing up your existing files) but as with most
shell scripts, there are probably some configurations that will break it. On macOS, you will need to install coreutils
to use `symlinkctl` (eg, `brew install coreutils`).

# Dependencies

The dotfiles expect an environment with the below binaries installed and in `$PATH`.

* awk
* date
* [delta](https://github.com/dandavison/delta)
* git
* logname
* ps
* sed
* tmux
* tput
* uname
* vim
* [vivid](https://github.com/sharkdp/vivid)
