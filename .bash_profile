#
# ~/.bash_profile
#
if [ -f ~/bin/startup.sh ] ; then
    exec `~/bin/startup.sh`
fi

[[ -f ~/.bashrc ]] && . ~/.bashrc
