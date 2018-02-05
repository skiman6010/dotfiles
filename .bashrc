# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
    # Shell is non-interactive.  Be done now!
    return
fi


# Put your fun stuff here.
alias ec='sudo enter-chroot'
alias xenial='sudo startunity -b'
alias unity='sudo startunity -b'
alias xiwi='sudo startunity -X xiwi -b'
alias telegram='sudo enter-chroot -b xiwi ~/Downloads/Development/Telegram/Telegram'
alias atom='sudo enter-chroot -b xiwi -f atom'
alias update='sudo sh ~/Downloads/crouton -u -n sid'
alias kill='sudo unmount-chroot -f sid'
alias starti3='sudo enter-chroot -n sid xinit'
alias signal='sudo enter-chroot -b xiwi -f signal-desktop'
cd ~/Downloads/

TERM=xterm-256color
export PAGER=/usr/local/bin/less
export MANPATH=/usr/local/man:/usr/local/share/man:/usr/share/man

# git completion
if [ -f /usr/local/share/git-completion/git-completion.bash ]; then
  source /usr/local/share/git-completion/git-completion.bash
fi
export PAGER=/usr/local/bin/less
export TMPDIR=/usr/local/tmp
export PATH="$HOME/go/bin:$PATH"
export TMPDIR=/usr/local/tmp
