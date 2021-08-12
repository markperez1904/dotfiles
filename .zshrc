# ZSH CONFIG

# Path to your oh-my-zsh installation.
export ZSH="/Users/mark/.oh-my-zsh"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# source zsh colors
source $ZSH/oh-my-zsh.sh

# BASH CONFIG

# Color-code the directories when using 'ls'
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# Windows 10 subsystem of the linux thing
alias win='cd /mnt/c/Users/mark'

# Ubuntu Defaults
alias ll='ls -al'
alias la='ls -a'
alias l='ls'

# youtube-dl for (.m4a) files, and mp4>mov
alias youtube="youtube-dl -f 'worstaudio[ext=m4a]'"
alias mov-to-mp4='for i in *.mov; do ffmpeg -i "$i" "${i%.*}.mp4"; done'
alias mp4-to-mp4='for i in *.mp4; do ffmpeg -i "$i" "${i%.*}-compressed.mp4"; done'

# launch minecraft
alias minecraft='cd ~/Documents/mc/minecraft\ game\ file ; java -jar Minecraft\ Launcher.jar'

# Update & Clean
alias update='(sudo apt update; sudo apt upgrade) || sudo pacman -Syyu'
alias clean='(sudo apt autoremove; sudo apt autoclean; sudo apt clean) || sudo pacman -Rscn $(sudo pacman -Qtdq); sudo pacman -Scc'
alias fix='sudo apt install -f'

# Macos
alias hide='defaults write com.apple.finder CreateDesktop false; killall Finder'
alias show='defaults write com.apple.finder CreateDesktop true; killall Finder'
alias con='convert -trim -transparent'
alias v='vim'
alias c='clear'
alias r='reset'
alias e='exit'
alias brewing='brew update; brew upgrade; brew cleanup'

# Arch Linux
alias jd='javadoc -version -author -linksource -d ~/Desktop/javadoc'
alias reflect='sudo reflector --country "United States" --age 12 --protocol https --sort rate --save /etc/pacman.d/mirrorlist'
alias wifi='sudo systemctl restart NetworkManager'

# Node.js
alias dev='npm run dev'
alias gen='npm run generate'
alias star='npm run start'

# color-code man pages
export LESS_TERMCAP_mb=$'\E[1;31m'     # begin bold
export LESS_TERMCAP_md=$'\E[1;36m'     # begin blink
export LESS_TERMCAP_me=$'\E[0m'        # reset bold/blink
export LESS_TERMCAP_so=$'\E[01;44;33m' # begin reverse video
export LESS_TERMCAP_se=$'\E[0m'        # reset reverse video
export LESS_TERMCAP_us=$'\E[1;32m'     # begin underline
export LESS_TERMCAP_ue=$'\E[0m'        # reset underline
export GROFF_NO_SGR=1                  # for konsole and gnome-terminal
