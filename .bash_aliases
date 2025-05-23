# -------------------------------------------------------------------------------------- #
# -------------------------------------->      vim       <------------------------------ #
# -------------------------------------------------------------------------------------- #
set -o vi
set editing-mode vi
set keymap vi

# -------------------------------------------------------------------------------------- #
# ------------------------------------->     XBPS-*     <------------------------------- #
# -------------------------------------------------------------------------------------- #
alias qi="xbps-query -vs"
alias q="xbps-query -Rs"
alias u="doas xbps-install -S && doas xbps-install -u xbps && doas xbps-install -Su"
alias i="doas xbps-install -S"
alias c="doas xbps-remove -RoO && doas vkpurge rm all"
alias d="doas xbps-remove -Rv"
alias pkgxbps="doas xbps-reconfigure -fa"

# -------------------------------------------------------------------------------------- #
# ---------------------------------->     runit     <----------------------------------- #
# -------------------------------------------------------------------------------------- #
alias start="doas sv start "
alias stop="doas sv stop "
alias restart="doas sv restart "

# -------------------------------------------------------------------------------------- #
# --------------------------------->     Other     <------------------------------------ #
# -------------------------------------------------------------------------------------- #
alias vsxh="vim ~/.config/sxhkd/sxhkdrc"
alias uuidl="ls -l /dev/disk/by-uuid/"
alias font="fc-list : family | sort | uniq"
alias cpp="rsync -rvphWP --info=progress2"
alias dtouch="doas touch"
alias img="sxiv"
alias neofetch="fastfetch"
alias reload-sxhkd="pkill -USR1 -x sxhkd"
alias reload-transmission="pkill -HUP transmission-daemon"
alias taillog="tail -n 5 -v -f "
alias fr="free -h"
#alias qemu="qemu-system-x86_64"

# --------------------------------------------------------------------------------------- #
# ---------------------------------->     log ...    <----------------------------------- #
# --------------------------------------------------------------------------------------- #
alias xx='exit'
alias blkidl="doas blkid -o list"
alias lsblkl=" lsblk -rno size,name,label,mountpoint,fstype,uuid"
alias pw='bash -c '"'"'echo `tr -dc $([ $# -gt 1 ] && echo $2 || echo "A-Za-z0-9") < /dev/urandom | head -c $([ $# -gt 0 ] && echo $1 || echo 30)`'"'"' --'
alias logk="doas dmesg --clear &&  doas dmesg --ctime --follow"
alias pls='doas $(fc -ln -1)' # Runs the last command with doas
alias perms="doas chmod 664"
alias chownuser="doas chown -R $(whoami):$(whoami) ."
alias h='history | cut -c 8- | tac | fzy -l 20 | xclip -selection clipboard'
alias xp="xclip -selection clipboard"
alias fontlist="fc-list : family | sort | uniq"
alias pdf="zathura "
alias sb="source $HOME/.bashrc ; source $HOME/.profile ; source $HOME/.bash_profile"

# --------------------------------------------------------------------------------------- #
# --------------------------------->     cp mv ...    <---------------------------------- #
# --------------------------------------------------------------------------------------- #
alias rm="rm -vI"
alias drm="rm -rf"
alias mv='mv -iv'
alias dcp='doas cp -iv'
alias dmv='doas mv -iv'
alias mkdir="mkdir -pv"
alias cp='cp -iv'
alias cal="cal --twelve"
alias cl="clear"
#alias drm="doas rm -rf" 
alias m="man"
alias zconf="nvim $HOME/.zshrc"
alias bconf="nvim $HOME/.bashrc"

# --------------------------------------------------------------------------------------- #
# --------------------------------->     ls & eza     <---------------------------------- #
# --------------------------------------------------------------------------------------- #
alias lls="ls --color=auto -a --group-directories-first"
alias ls="ls --color=auto --group-directories-first"
alias ld="ls --color=auto -d */ && ls --color=auto -d .*/ "
alias l="ls -Flh --group-directories-first --color=auto"
alias ll="ls -F -dlh .* --group-directories-first --color=auto"

# --------------------------------------------------------------------------------------- #
# --------------------------------->      neovim      <---------------------------------- #
# --------------------------------------------------------------------------------------- #
alias v="nvim" vim="nvim" vi="nvim"
alias dvi='doas nvim' dvim='doas nvim' dv='doas nvim'

# --------------------------------------------------------------------------------------- #
# --------------------------------->     shutdown     <---------------------------------- #
# --------------------------------------------------------------------------------------- #
alias pweroff="doas shutdown -P now"
alias rboot="doas shutdown -r now"
alias tfi="doas shutdown -h"

# --------------------------------------------------------------------------------------- #
# --------------------------------->     Archives     <---------------------------------- #
# --------------------------------------------------------------------------------------- #
alias lzip="unzip -l"
alias ltar="tar -ztvf"
alias ctar="tar -cvzf"
alias czip="zip -r"
alias lxz="tar -Jtvf"
alias cxz="tar -cvJf"

# --------------------------------------------------------------------------------------- #
# --------------------------------->     android     <----------------------------------- #
# --------------------------------------------------------------------------------------- #
alias adbrootshell="adb root ; sleep 2 ; adb remount ; sleep 2 ; adb shell "

# --------------------------------------------------------------------------------------- #
# --------------------------------->       cd        <----------------------------------- #
# --------------------------------------------------------------------------------------- #
alias cd-='cd -'
alias cd..='cd ..'
alias .2="cd ../.."
alias .3="cd ../../.."
alias .4="cd ../../../.."
alias .5="cd ../../../../.."

# --------------------------------------------------------------------------------------- #
# --------------------------------->      tree       <----------------------------------- #
# --------------------------------------------------------------------------------------- #
alias td="tree -d -h --du "
alias tf="tree -i -f -s -h "
alias tsh='tree -P "*.sh" --prune -s -h '
alias trees="tree -s -h --du -a "

# --------------------------------------------------------------------------------------- #
# ---------------------------------->      du       <------------------------------------ #
# --------------------------------------------------------------------------------------- #
alias T='du -sh' 
alias duf='du -sh * '
alias dud='du -d 1 -h '
alias duone='du -h --max-depth=1 '
alias disk='doas du -h --max-depth=1 ~/ | sort -rh '

# --------------------------------------------------------------------------------------- #
# --------------------------------->      find       <----------------------------------- #
# --------------------------------------------------------------------------------------- #
alias fd="find ~/ -type d -name"
alias ff="find ~/ -type f -name"

# --------------------------------------------------------------------------------------- #
# ------------------------------>     net wifi ...     <--------------------------------- #
# --------------------------------------------------------------------------------------- #
alias ping="ping voidlinux.org"
alias wgetall="wget -r -np -nH --cut-dirs=1 -R index.html "
alias myip="ip -f inet address | grep inet  | grep -v 'lo$' | cut -d ' ' -f 6,13 && curl ifconfig.me && echo ' external ip'"
alias myipp='curl -s -m 5 https://ipleak.net/json/ | jq "{Country: .country_name, Region: .region_name, Continent: .continent_name, City: .city_name, TimeZone: .time_zone, IP: .query_text}"'
alias wifilist="nmcli device wifi list | more"
alias wifistatus="nmcli device status"
alias wifishow="nmcli connection show | more"
#alias darknet="torsocks w3m -o  auto_image=FALSE .w3m/bookmark.html"

# --------------------------------------------------------------------------------------- #
# ------------------------------->      ffmpeg       <----------------------------------- #
# --------------------------------------------------------------------------------------- #
alias ffmpeg="ffmpeg -hide_banner" 
alias ffmpegcodel="ffmpeg -encoders | grep -i"
#alias ff="ffmpeg -framerate 16 -f x11grab -s 1920x1080 -i :0.0+0,0 Output.mkv"
alias rec="ffmpeg -framerate 24 -f x11grab -video_size 1920x1080 -i :0.0+1366,0 -preset ultrafast -crf 8 ~/Recordings/Output.mkv"
alias f="ffmpeg -framerate 24 -f x11grab -video_size 1366x768 -i :0.0+0,0 -preset ultrafast -crf 8 ~/Recordings/Output.mkv"
alias cam="ffplay -f v4l2 -framerate 29 -video_size 1280x720 /dev/video0"

# --------------------------------------------------------------------------------------- #
# ------------------------------>      suckless       <---------------------------------- #
# --------------------------------------------------------------------------------------- #
alias nf='clear && neofetch'
alias rmsuckless="doas rm *.o ; doas rm *.orig ; doas rm config.h"
alias makesuckless="doas make -s && doas make -s clean install"

# --------------------------------------------------------------------------------------- #
# ------------------------------>      python        <----------------------------------- #
# --------------------------------------------------------------------------------------- #
alias py="python"
alias apy="source $HOME/env/bin/activate"
alias ve="python -m venv" 
alias va="source $HOME/.venv/devtool/bin/activate" 
alias vd="deactivate"
alias pipi="pip install"
alias pipuni="pip uninstall"
alias pipls="pip list"
alias pipshow="pip show"
alias pipout="pip list --outdated"
alias pipreq="pip freeze > requirements.txt"
alias pipfrom="pip install -r requirements.txt" # -r , --requirement
alias pipup="pip install --upgrade pip " # -U, --upgrade
