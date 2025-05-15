#!/bin/fish
# env vars to set on login, zsh settings in ~/config/zsh/.zshrc
# read first

# default programs
set -x EDITOR "nvim"
set -x TERM "st"
set -x TERMINAL "st"
set -x MUSPLAYER "termusic"
set -x BROWSER "firefox"
set -x BROWSER2 "librewolf"
# set -x DISPLAY ":0" # useful for some scripts

# follow XDG base dir specification
set -x XDG_CONFIG_HOME "$HOME/.config"
set -x XDG_DATA_HOME "$HOME/.local/share"
set -x XDG_CACHE_HOME "$HOME/.cache"

# bootstrap .zshrc to ~/.config/zsh/.zshrc, any other zsh config files can also reside here
set -x ZDOTDIR "$XDG_CONFIG_HOME/zsh"

# history files
set -x LESSHISTFILE "$XDG_CACHE_HOME/less_history"
set -x PYTHON_HISTORY "$XDG_DATA_HOME/python/history"

# add scripts to path
set -x PATH "$XDG_CONFIG_HOME/scripts" $PATH

# moving other files and some other vars
set -x XINITRC "$XDG_CONFIG_HOME/x11/xinitrc"
set -x XPROFILE "$XDG_CONFIG_HOME/x11/xprofile"
set -x XRESOURCES "$XDG_CONFIG_HOME/x11/xresources"
set -x GTK2_RC_FILES "$XDG_CONFIG_HOME/gtk-2.0/gtkrc-2.0" # gtk 3 & 4 are XDG compliant
set -x WGETRC "$XDG_CONFIG_HOME/wget/wgetrc"
set -x PYTHONSTARTUP "$XDG_CONFIG_HOME/python/pythonrc"
set -x GNUPGHOME "$XDG_DATA_HOME/gnupg"
set -x CARGO_HOME "$XDG_DATA_HOME/cargo"
set -x GOPATH "$XDG_DATA_HOME/go"
set -x GOBIN "$GOPATH/bin"
set -x GOMODCACHE "$XDG_CACHE_HOME/go/mod"
set -x NPM_CONFIG_USERCONFIG "$XDG_CONFIG_HOME/npm/npmrc"
set -x GRADLE_USER_HOME "$XDG_DATA_HOME/gradle"
set -x NUGET_PACKAGES "$XDG_CACHE_HOME/NuGetPackages"
set -x _JAVA_OPTIONS "-Djava.util.prefs.userRoot=$XDG_CONFIG_HOME/java"
set -x _JAVA_AWT_WM_NONREPARENTING 1
set -x PARALLEL_HOME "$XDG_CONFIG_HOME/parallel"
set -x FFMPEG_DATADIR "$XDG_CONFIG_HOME/ffmpeg"
set -x WINEPREFIX "$XDG_DATA_HOME/wineprefixes/default"
set -x DATE (date "+%A, %B %e  %_I:%M%P")

set -x FZF_DEFAULT_OPTS "--style minimal --color 16 --layout=reverse --height 30% --preview='bat -p --color=always {}'"
set -x FZF_CTRL_R_OPTS "--style minimal --color 16 --info inline --no-sort --no-preview" # separate opts for history widget
set -x MANPAGER "less -R --use-color -Dd+r -Du+b" # colored man pages

# colored less + termcap vars
set -x LESS "R --use-color -Dd+r -Du+b"
set -x LESS_TERMCAP_mb (printf '%b' '[1;31m')
set -x LESS_TERMCAP_md (printf '%b' '[1;36m')
set -x LESS_TERMCAP_me (printf '%b' '[0m')
set -x LESS_TERMCAP_so (printf '%b' '[01;44;33m')
set -x LESS_TERMCAP_se (printf '%b' '[0m')
set -x LESS_TERMCAP_us (printf '%b' '[1;32m')
set -x LESS_TERMCAP_ue (printf '%b' '[0m')
