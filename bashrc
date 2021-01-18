# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

if [ -z "$TMUX" ]; then
    tmux attach -t default || tmux new -s default
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions


alias kalilinux="podman run -it toolisticon/kalilinux"
alias juiceshop="podman run -it -p 3000:3000 bkimminich/juice-shop"
alias dvwa="podman run -it -p 8080:80 sagikazarmark/dvwa"
alias leftoff="xrandr --output eDP --off"
alias lefton="xrandr --output eDP --auto --right-of HDMI-A-0"
