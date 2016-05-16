# everyone wants to be first. but this is mine:
export PATH="${HOME}/bin:${PATH}"

# make sure /usr/local/bin is before /usr/bin in PATH:
export PATH="/usr/local/bin:${PATH}"

# use java_home to specify JAVA_HOME:
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`

export PATH="${PATH}:${JAVA_HOME}/bin"
export MYSQL_HOME=/usr/local/mysql
export PATH="${PATH}:${MYSQL_HOME}/bin"
export SCALA_HOME="${HOME}/scala-2.11.4"
export PATH="${PATH}:${SCALA_HOME}/bin"
export MONGO_HOME="${HOME}/mongodb-osx-x86_64-3.0.6"
export PATH="${PATH}:${MONGO_HOME}/bin"
export EC2_HOME="${HOME}/aws/ec2/ec2-api-tools-1.6.10.1"
export PATH="${PATH}:${EC2_HOME}/bin"
export MVN_HOME="${HOME}/mvn/apache-maven-3.3.3"
export PATH="${PATH}:${MVN_HOME}/bin"
export GRADLE_HOME="${HOME/gradle}/gradle-1.9"
export PATH="${PATH}:${GRADLE_HOME}/bin"
export MULE_HOME="${HOME/mule}/mule-standalone-3.4.0"
export PATH="${PATH}:${MULE_HOME}/bin"
export CARBON_HOME="${HOME}/wso2is-5.0.0"
export PATH="${PATH}:${CARBON_HOME}/bin"
export GO_APPENGINE="${HOME}/google-app-engine/go_appengine"
export PATH="${PATH}:${GO_APENGINE}"

# golang.org
export GOROOT=/usr/local/go
export GOPATH="${HOME}/go"
export PATH=$PATH:$GOPATH/bin

complete -C aws_completer aws
source ~/git-completion.bash

export GIT_EDITOR=vim
export CLICOLOR=YES

alias l='ls -F'
alias lsd='ls -d'
alias p3='python3'
alias p2='python'
alias vi='vim'
alias path='echo -e ${PATH//:/\\n}'
alias gpom='git push origin master'
alias gs='git status'
alias gad='git add .'
alias gccp='git commit -a -m \"checkpoint\"'
alias gsf='for d in `find . -depth 1 -type d`; do (echo "---- ${d} -----" && cd ${d} && git status); done'
alias gshove='git add . && git commit -m "checkpoint" && git push origin master'
alias oc-pull='for file in `cat ../oc-repos.txt`; do (echo "----------- $file ----------------" && cd $file && git pull); done'

function find_and_grep {
find . -name "$1" -exec grep -i "$2" '{}' /dev/null ';'
}
alias fng="find_and_grep"

# Setting PATH for Python 3.4
# The orginal version is saved in .profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.4/bin:${PATH}"
export PATH

# history mischief:
# avoid duplicates..
export HISTCONTROL=ignoredups
# append history entries..
shopt -s histappend
# After each command, save and reload history
PROMPT_COMMAND="history -a;$PROMPT_COMMAND"

#export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export PS1="\[\033[36m\][\!]\[\033[m\] \[\033[36;1m\]\W\[\033[m\] $ "
#emos=("🌩" "☕️" "☠️" "📡" "🐭")
#export PS1="\[\033[36m\][\!]\[\033[m\] \[\033[36;1m\]\W\[\033[m\] ${emos[$RANDOM % ${#emos[@]} ]}  "

# The next line updates PATH for the Google Cloud SDK.
source '/Users/cthom85/google-cloud-sdk/path.bash.inc'

# The next line enables shell command completion for gcloud.
source '/Users/cthom85/google-cloud-sdk/completion.bash.inc'
