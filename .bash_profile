# Files traveling
alias ll="ls -lA"
alias ~~="cd ~/"
alias ..="cd ../"

# Git
alias gst="git status"
alias gad="git add ."
alias gco="git commit -m"

force_color_prompt=yes
if [ "$color_prompt" = yes ]; then
	PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
	PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
