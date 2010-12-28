
# Check for an interactive session
[ -z "$PS1" ] && return

# modified commands
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias ping='ping -c 5'
alias mkdir='mkdir -p -v'
alias svim='sudo vim'

# overwrite protection and recursion
alias cp='cp -i -r'
alias mv='mv -i'
alias rm='rm -I'

# ssh shortcuts
alias dover='ssh -X codonnel@dover'
alias doverftp='sftp codonnel@dover'

# privileged access
if [ $UID -ne 0 ]; then
    alias poweroff='sudo poweroff'
    alias reboot='sudo reboot'
    alias powerpill='sudo powerpill'
fi

# general shortcuts
alias volume='amixer set Master'

PS1='[\u@\h \W]\$ '

# colored man pages
export LESS_TERMCAP_mb=$(printf "\e[1;37m")
export LESS_TERMCAP_md=$(printf "\e[1;37m")
export LESS_TERMCAP_me=$(printf "\e[0m")
export LESS_TERMCAP_se=$(printf "\e[0m")
export LESS_TERMCAP_so=$(printf "\e[1;47;30m")
export LESS_TERMCAP_ue=$(printf "\e[0m")
export LESS_TERMCAP_us=$(printf "\e[0;36m")

# so that colored man pages don't cause env to display variables in different
# colors
function env() {
  exec /usr/bin/env "$@" | grep -v ^LESS_TERMCAP_
}

# set vi mode in bash
set -o vi

# set default apps
export BROWSER=firefox
export EDITOR=vim

# add cljr executable to $PATH
export PATH=/home/chris/.cljr/bin:$PATH

# add set clojure directory
export CLOJURE_EXT=/usr/share/clojure
# add clojure, clojure-contrib, and vimclojure to $CLASSPATH
# export CLASSPATH=/usr/share/clojure/clojure.jar:/usr/share/clojure/clojure-contrib.jar:/usr/share/clojure/vimclojure.jar:/home/chris/.vim/vimclojure-2.1.2/classes:$CLASSPATH

# set GRADLE_HOME
export GRADLE_HOME=/usr/share/java/gradle
