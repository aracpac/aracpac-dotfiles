These dotfiles are optimized for the following tools:

* bash
* tmux
* vim
* [alacritty](https://github.com/alacritty/alacritty)

The repo includes the following submodules:

* bash [liquidprompt](https://github.com/nojhan/liquidprompt)
* tmux [tpm](https://github.com/tmux-plugins/tpm)
* vim [Vundle](https://github.com/VundleVim/Vundle.vim)

# Installation

You should probably just manually symlink the files then run the below to install the Vim and tmux plugins:
```
vim --clean '+source ~/.vimrc' +PluginInstall +qall
.tmux/plugins/tpm/scripts/install_plugins.sh
```

Alternatively, if you like living life on the edge (and after you've scrutinized the code) you can use `symlinkctl` to
do that for you.

```
./symlinkctl enable
```

And to remove the symlinks:

```
./symlinkctl disable
```

`symlinkctl` tries to be smart, portable, and non-destructive (eg, by backing up your existing files) but as with most
shell scripts, it will probably break on some configurations ¯\_(ツ)_/¯. It expects a modern version of bash, with
`readarray`, `grep` with the `-P` flag, and `readlink` with the `-f` flag. These requirements mean that it will not work
on macOS, unless you have explicitly installed an updated bash, GNU grep, and GNU readlink.

# Dependancies

The dotfiles expect an environment with the below binaries installed and in `$PATH`. Note that the flag requirements
for `grep` and `readlink` mean that you'll need to install the GNU versions and alias them if you're on macOS.

* alacritty
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
