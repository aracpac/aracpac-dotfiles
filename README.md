These dotfiles are optimized for the following tools:

* bash (a modern version with `readarray`, which means the version shipped with macOS is not compatible)
* tmux
* vim
* [alacritty](https://github.com/alacritty/alacritty)

It includes the following submodules:

* bash [liquidprompt](https://github.com/nojhan/liquidprompt)
* tmux [tpm](https://github.com/tmux-plugins/tpm)
* vim [Vundle](https://github.com/VundleVim/Vundle.vim)

# Installation

You should probably just manually symlink the files.

If you like living life on the edge (and after you've scrutinized the code) you can use `symlinkctl` to do it for you.

```
./symlinkctl enable
```

And to remove the symlinks:

```
./symlinkctl disable
```

`symlinkctl` tries to be smart, portable, and non-destructive (eg, by backing up your existing files) but as with most
shell scripts, I'm sure it will break on some configurations ¯\_(ツ)_/¯.

# Dependancies

The dotfiles expect an environment with the below binaries installed and in `$PATH`. Note that the flag requirements
for `grep` and `readlink` mean that you'll need to install the GNU versions and alias them if you're on macOS.

* alacritty
* awk
* date
* [delta](https://github.com/dandavison/delta)
* git
* grep (with -P support)
* logname
* ps
* readlink (with -f support)
* sed
* tmux
* tput
* uname
* vim
* [vivid](https://github.com/sharkdp/vivid)
