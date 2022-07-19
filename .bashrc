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

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi

unset rc

if [ -f `which powerline-daemon` ]; then
  powerline-daemon -q
  POWERLINE_BASH_CONTINUATION=1
  POWERLINE_BASH_SELECT=1
  . /usr/share/powerline/bash/powerline.sh
fi

alias code='flatpak run com.visualstudio.code'
alias currentip='curl icanhazip.com'
alias rmbloat='adb shell pm uninstall --user 0'
alias unfuck_wifi='sudo service NetworkManager restart'
alias nalssi='curl wttr.in'
#curl wttr.in/:help
alias wifiinfo='nmcli device wifi show -s'
alias please='sudo $(history -p !!)'
alias tmpdr='cd $(mktemp -d)'
alias random='ls | shuf -n 1'

alias mv='mv -iv'
alias cp='cp -riv'
alias mkdir='mkdir -vp'
alias rm='rm -iv'
export PATH=/home/laptop-17/.cargo/bin:$PATH
export PATH="$HOME/go/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
