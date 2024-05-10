# dotfiles

Personal Dotfiles.

Requires all dependencies of :

https://github.com/adi1090x/polybar-themes

Additional dependencies :

- fw-ectool (for branch fw)
- bspwm, sxhkd
- pulseaudio, playerctl
- light
- kitty
- picom
- betterlockscreen
- mpv
- dunst
- policykit + graphic policykit (for fw branch fan control shortcuts)
- xdo,xdotool (scratchpad) (firefox)

Repository setup ([borrowed!](https://github.com/Siilwyn/my-dotfiles))

```
git init --bare $HOME/.dotfiles
alias mydotfiles='git --git-dir=$HOME/.dotfiles --work-tree=$HOME'
mydotfiles remote add origin git@github.com:cinnamondev/dotfiles.git
```

Replicating

```
git clone --separate-git-dir=$HOME/.dotfiles git@github.com/cinnamondev/dotfiles.git .dotfiles-tmp
rsync --recursive --verbose --exclude '.git*' --exclude 'README.md' .dotfiles-tmp/ $HOME/
rm --recursive .dotfiles-tmp
```
