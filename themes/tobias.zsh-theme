# zsh theme requires 256 color enabled terminal
# i.e TERM=xterm-256color
# Preview - http://www.flickr.com/photos/adelcampo/4556482563/sizes/o/
# based on robbyrussell's shell but louder!

# PROMPT='%{$fg_bold[blue]%}$(git_prompt_info) %F{208}%c%f
# %{$fg_bold[white]%}%# %{$reset_color%}'
# RPROMPT='%B%F{208}%n%f%{$fg_bold[white]%}@%F{039}%m%f%{$reset_color%}'
# 
# ZSH_THEME_GIT_PROMPT_PREFIX="%F{154}±|%f%F{124}"
# ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
# ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}%B✘%b%F{154}|%f%{$reset_color%}"
# ZSH_THEME_GIT_PROMPT_CLEAN=" %{$fg[green]%}✔%F{154}|"

if [ "$(whoami)" = "root" ]; then NCOLOR="red"; else NCOLOR="yellow"; fi

# PROMPT='%{$fg[$NCOLOR]%}%c ➤ %{$reset_color%}'
# george - PROMPT='%{$fg[$NCOLOR]%}%c ∴ %{$reset_color%}'
# Soliah - PROMPT='%{$fg[blue]%}%B%20~%b%{$reset_color%}%{$(git_prompt_info)%} $ '
# tobias first - PROMPT="$fg[$NCOLOR]%4~%b %(?..[%?] )%{$reset_color%}∴ "
PROMPT='%{$fg[$NCOLOR]%}%20~ %(?..[%?] )%{$reset_color%}∴ '
HOLD_PROMPT=$PROMPT

# RPROMPT
#RPROMPT='%{$fg[$NCOLOR]%}%p $(git_prompt_info)%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="git:"
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY="*"
ZSH_THEME_GIT_PROMPT_CLEAN=""

export GIT_MODE=0

function git_mode() {
  if [ $GIT_MODE -eq 0 ]; then
    PROMPT='%{$fg[$NCOLOR]%}%20~ %{$reset_color%}%{$(git_prompt_info)%} ∴ '
    GIT_MODE=1
  else
    PROMPT=$HOLD_PROMPT
    GIT_MODE=0
  fi	     
}  

     
