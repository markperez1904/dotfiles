# Ignore 'tput' error message when logging in
[ -z "$PS1" ] && return

# Ubuntu Colors
export PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

# Force bash to have auto-completion enabled
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

# Color-code the directories when using 'ls'
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# Ubuntu Defaults
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Update & Clean
alias update='(brew update; brew upgrade) || (sudo apt update; sudo apt upgrade) || sudo pacman -Syu'
alias clean='(brew cleanup all) || (sudo apt autoremove; sudo apt autoclean; sudo apt clean) || (sudo pacman -Rscn $(sudo pacman -Qtdq); sudo pacman -Sc; sudo pacman -Scc)'

# Macos
alias hide='defaults write com.apple.finder CreateDesktop false; killall Finder'
alias show='defaults write com.apple.finder CreateDesktop true; killall Finder'
alias p='python3'
alias n='node'
alias v='vim'
alias cv='convert -trim -transparent'
alias c='clear'

# Arch Linux
alias jd='javadoc -version -author -linksource -d ~/Desktop/javadoc'
alias reflect='sudo reflector --country "United States" --age 12 --protocol https --sort rate --save /etc/pacman.d/mirrorlist'
alias wifi='sudo systemctl restart NetworkManager'

# color-code man pages
export LESS_TERMCAP_mb=$'\E[1;31m'     # begin bold
export LESS_TERMCAP_md=$'\E[1;36m'     # begin blink
export LESS_TERMCAP_me=$'\E[0m'        # reset bold/blink
export LESS_TERMCAP_so=$'\E[01;44;33m' # begin reverse video
export LESS_TERMCAP_se=$'\E[0m'        # reset reverse video
export LESS_TERMCAP_us=$'\E[1;32m'     # begin underline
export LESS_TERMCAP_ue=$'\E[0m'        # reset underline
export GROFF_NO_SGR=1                  # for konsole and gnome-terminal

# setup miniconda3
if test -f "/opt/miniconda3/etc/profile.d/conda.sh" ; then
    [ -f /opt/miniconda3/etc/profile.d/conda.sh ] && source /opt/miniconda3/etc/profile.d/conda.sh
fi
