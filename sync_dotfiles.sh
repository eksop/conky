#!/bin/bash

DF_REPO="${HOME}/code/dotfiles"

#echo -e "Commencing"

# Dotfiles
cp -f ~/.emacs ${DF_REPO}/_emacs
cp -f ~/.tmux.conf ${DF_REPO}/_tmux.conf
cp -f ~/.xmodmap ${DF_REPO}/_xmodmap
cp -f ~/.Xresources ${DF_REPO}/_Xresources

# Conky Stuff
cp -f ~/conky/proc_watch ${DF_REPO}/conky/proc_watch
cp -f ~/conky/simple_clock ${DF_REPO}/conky/simple_clock
cp -f ~/conky/sys_watch ${DF_REPO}/conky/sys_watch

# Openbox Stuff
cp -f ~/.config/openbox/autostart ${DF_REPO}/openbox/autostart
cp -f ~/.config/openbox/environment ${DF_REPO}/openbox/environment
cp -f ~/.config/openbox/menu.xml ${DF_REPO}/openbox/menu.xml
cp -f ~/.config/openbox/rc.xml ${DF_REPO}/openbox/rc.xml

# mpd conf
cp -f ~/.config/mpd/mpd.conf ${DF_REPO}/mpd.conf

#echo -e "Done"
