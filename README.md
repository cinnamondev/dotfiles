# dotfiles
Dependencies:

- hyprland
- hyprpaper
- hypridle
- hyprlock
- nemo
- kitty
- wofi
- polkit gnome auth agent (polkit)
- dunst
- grim
- slurp
- wl-copy
- 
additional:
- light (brightness ctrl)
- acpi (battery)
- ectool (framework fan)
- pavucontrol
- blueman-manager


Repository setup ([borrowed!](https://github.com/Siilwyn/my-dotfiles))

```
git init --bare $HOME/.dotfiles
alias mydotfiles='git --git-dir=$HOME/.dotfiles --work-tree=$HOME'
dotfiles branch -m zen
mydotfiles remote add origin git@github.com:cinnamondev/dotfiles.git
```

Replicating

```
git clone --separate-git-dir=$HOME/.dotfiles -b zen git@github.com:/cinnamondev/dotfiles.git .dotfiles-tmp
dotfiles
rsync --recursive --verbose --exclude '.git*' --exclude 'README.md' .dotfiles-tmp/ $HOME/
rm --recursive .dotfiles-tmp
```
