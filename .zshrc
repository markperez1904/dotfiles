# ZSH CONFIG

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# source zsh colors
source $ZSH/oh-my-zsh.sh

# HYBRID CONFIG - Color-code the directories when using 'ls'
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# Ubuntu Defaults
alias ll='ls -al'
alias la='ls -a'
alias l='ls'

# youtube-dl and ffmpeg stuff
alias youtube="yt-dlp -x --audio-format opus"
alias opus-all='for i in *; do ffmpeg -i "$i" "${i%.*}-mini.opus"; done'
alias mp4-all='for i in *; do ffmpeg -i "$i" "${i%.*}-mini.mp4"; done'
alias jpg-all='for i in *; do ffmpeg -i "$i" "${i%.*}-mini.jpg"; done'
alias png-all='for i in *; do ffmpeg -i "$i" "${i%.*}-mini.png"; done'

# ~
alias deflection='for i in *; do sox "$i" "${i%.*}-mini.mp3" pitch -150; done'
alias inflection='for i in *; do sox "$i" "${i%.*}-mini.mp3" pitch 150; done'

# whisper AI
alias decipher='whisper --model tiny --threads 6'

# Update & Clean
alias update='(sudo apt update; sudo apt upgrade) || sudo pacman -Syyu'
alias clean='(sudo apt autoremove; sudo apt autoclean; sudo apt clean) || sudo pacman -Rscn $(sudo pacman -Qtdq); sudo pacman -Scc'
alias fix='sudo apt install -f'

# Macos
alias hide='defaults write com.apple.finder CreateDesktop false; killall Finder'
alias show='defaults write com.apple.finder CreateDesktop true; killall Finder'
alias brewing='brew update; brew upgrade; brew cleanup'

# Arch Linux
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

# end of file
