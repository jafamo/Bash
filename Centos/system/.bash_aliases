
# .bash_aliases
# @uthor: jafamo
# created 11-01-2016
#  System: Centos 7
#


## COLORS ##
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    
    
#### GIT #####

alias gitoneline="git log --oneline --decorate --graph"

alias gitonelinedates="git log --pretty=format:'%h was %an, %ai, message: %s'" 

#alias gitlogall="git log --pretty=format:'%h was %an, %ai,message:%s' --oneline --decorate"

alias gitlogall="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n''          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)' --all"


 
#### BASH #####

    #alias grep
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

    #alias top
alias topuser='top -u $user'    				
    								
    #alias rm
alias rm='rm -rfv'
    						
    #alias mkdir
alias mkdir='mkdir -pv'



### MAN COLOR ####

man() {
  env \
    LESS_TERMCAP_mb=$(printf "\e[1;31m") \
    LESS_TERMCAP_md=$(printf "\e[1;31m") \
    LESS_TERMCAP_me=$(printf "\e[0m") \
    LESS_TERMCAP_se=$(printf "\e[0m") \
    LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
    LESS_TERMCAP_ue=$(printf "\e[0m") \
    LESS_TERMCAP_us=$(printf "\e[1;32m") \
      man "$@"
}

fi  
  
  #### WEB ####
  
  ## Comands with rsync
alias rsyncUpdate='rsync -arvu --progress' #
alias rsyncSincro='rsync -rtvu --delete --progress' #syncronice two directorys 


# r = recursive
# t = conserve time modify files
# v = output info 
# u = update origin/ destine/


    #alias wget
  
alias wgetdescarga='wget --random-wait -r -p -e robots=off -U mozilla'

  # r   recursive
  # k   convert links ith relatives path offline
  # c	continue downloading
  # p   add images
  # http://www.muylinux.com/2009/02/17/descarga-webs-completas-con-wget
  #alias wgetdescarga='wget -rkcp'
  

  
    			
    			
    			
