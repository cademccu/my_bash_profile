
#----------------------------------------------------------
#   GENERAL
#----------------------------------------------------------
# delete this file [ ~/.hushlogin ] for last login information
# FUCK YOU APPLE I DONT WANt ZSH
export BASH_SILENCE_DEPRECATION_WARNING=1
export PATH=$PATH:~/scripts					# add scripts directory to path

#----------------------------------------------------------
#   JAVA
#----------------------------------------------------------
export JAVA_HOME=$(/usr/libexec/java_home)
export PATH=$JAVA_HOME/bin:$PATH
#----------------------------------------------------------
#   EDITORS
#----------------------------------------------------------
export SVN_EDITOR=vim
export VISUAL=vim
export EDITOR="$VISUAL"
#----------------------------------------------------------
#   PYTHON
#----------------------------------------------------------
export PATH=/usr/local/anaconda3/bin:$PATH
export PYTHONPATH="/usr/local/anaconda3/latest/lib/python3.8/site-packages:$PYTHONPATH"
#----------------------------------------------------------
#           PRINT COOL THINGS ON STARTUP
#----------------------------------------------------------
tail -n 41 ~/scripts/TEXT_FILES/penta.txt | head -n 32
cat ~/scripts/TEXT_FILES/fatbet.txt
# delete this file [ ~/.hushlogin ] for last login information
# FUCK YOU APPLE I DONT WANt ZSH
export BASH_SILENCE_DEPRECATION_WARNING=1

#----------------------------------------------------------
#   TERMINAL CHANGES
#----------------------------------------------------------
set -o vi							# set terminal line to use vi
cd() { builtin cd "$@"; ls; }               			# Always list directory contents upon 'cd'
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."
alias ~="cd ~"
alias lsd='ls -d */'						# list only directories
alias lsl='ls -l'						# long listing option
alias la='ls -a'						# list hidden dirs
alias l='ls '							# happens too often
alias ll='ls -l '
alias rmrf='rm -rf'						# faster way to blow away a directory
alias finder='open -a Finder ./'				# open current directory in finder
alias qfind="find . -name " 					# find a file in directory
alias tarup="tar -cvzf "					# standard tar with archive name specified
alias tardown="tar -xvf "					# standard achrive decompress
alias lock="sudo chmod -R 000 "					# set permissions so that you can only write to a folder	
alias unlock="chmod -R 700 "					# unlock the folder/file to full user permissions
alias please="sudo "
alias yeet="rm -rf "
alias cl="clear"
alias qsize="du -sh "						# prints size of directory in human readable format.
alias psize="sips -Z "						# resizes a photo. Args are <PIXEL MIN> <PHOTO_NAME>
alias h='history | sort -rn | more'				# opens "more" with history in reverse order (most recent)
alias chist="history | sort -rn | grep 'cd' "			# searches for cd commands
#----------------------------------------------------------
#   WORKSPACE MODIFIER
#----------------------------------------------------------

function setaa() { aa=$PWD; printf "\naa is set to: $aa\n\n"; }
function aa() { cd $aa; }

function setbb() { bb=$PWD; printf "\nbb is set to: $bb\n\n"; }
function bb() { cd $bb; }

function setcc() { cc=$PWD; printf "\ncc is set to: $cc\n\n"; }
function cc() { cd $cc; }

function setdd() { dd=$PWD; printf "\ndd is set to: $dd\n\n"; }
function dd() { cd $dd; }

function setee() { ee=$PWD; printf "\nee is set to: $ee\n\n"; }
function ee() { cd $ee; }

function setff() { ff=$PWD; printf "\nff is set to: $ff\n\n"; }
function ff() { cd $ff; }

function setdata() { MYDATA=$PWD; printf "\nMYDATA is set to: $MYDATA\n\n"; }
function data() { cd $MYDATA; }

function setwork() { MYWORK=$PWD; printf "\nMYWORK is set to: $MYWORK\n\n"; }
function work() { cd $MYWORK; }

function pwds() {
	printf "\n=============================================\n"
	printf "\taa:   %s\n" $aa
	printf "\tbb:   %s\n" $bb
	printf "\tcc:   %s\n" $cc
	printf "\tdd:   %s\n" $dd
	printf "\tee:   %s\n" $ee
	printf "\tff:   %s\n" $ff
	printf "\twork: %s\n" $MYWORK
	printf "\tdata: %s\n" $MYDATA
	echo "---------------------------------------------"
	echo "PWD:  $PWD"
	printf "=============================================\n\n"
}

#----------------------------------------------------------
#   FUNCTIONS
#----------------------------------------------------------
# yes i am ashamed on how often i use this
function div() {
	echo "========================================================================="
	echo "========================================================================="
	echo "========================================================================="
}

# prints abolute path of a file/dir
function getpath {
	printf "%s/%s\n" $PWD $1;
}




#----------------------------------------------------------
#   UNUSED STUFF
#----------------------------------------------------------
# if i ever want to use node.js again which lets be honest, no
#export NVM_DIR="$HOME/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
#[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
#export PATH="/usr/local/sbin:$PATH"
#export PATH="$HOME/.jenv/bin:$PATH"
#eval "$(jenv init -)"
