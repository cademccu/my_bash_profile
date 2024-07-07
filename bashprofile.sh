
#----------------------------------------------------------
#   GENERAL
#----------------------------------------------------------
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

#----------------------------------------------------------
#   TERMINAL CHANGES
#----------------------------------------------------------
set -o vi							# set terminal line to use vi
# cd() { builtin cd "$@"; ls; }               			# Always list directory contents upon 'cd'
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
alias lsone="ls -1"
alias ls1="ls -1"
#----------------------------------------------------------
#   WORKSPACE MODIFIER
#----------------------------------------------------------

function setaa() { aa="$PWD"; echo "aa is set to: $aa"; }
function aa() { cd $aa; pwd; ls; }

function setbb() { bb="$PWD"; echo "bb is set to: $bb"; }
function bb() { cd $bb; pwd; ls; }

function setcc() { cc="$PWD"; echo "cc is set to: $cc"; }
function cc() { cd $cc; pwd; ls; }

function setdd() { dd="$PWD"; echo "dd is set to: $dd"; }
function dd() { cd $dd; pwd; ls; }

function setee() { ee="$PWD"; echo "ee is set to: $ee"; }
function ee() { cd $ee; pwd; ls; }

function setff() { ff="$PWD"; echo "ff is set to: $ff"; }
function ff() { cd $ff; pwd; ls; }


function setdata() { MYDATA="$PWD"; echo "MYDATA is set to: $MYDATA"; }
function data() { cd $MYDATA; pwd; ls; }

function setwork() { MYWORK="$PWD"; echo "MYWORK is set to: $MYWORK"; }
function work() { cd $MYWORK; pwd; ls; }



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


