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
# george- PROMPT='%{$fg[$NCOLOR]%}%c ∴ %{$reset_color%}'
PROMPT="$fg[$NCOLOR]%2~ %(?..[%?] )%{$reset_color%}∴ "
#RPROMPT='%{$fg[$NCOLOR]%}%p $(git_prompt_info)%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="git:"
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY="*"
ZSH_THEME_GIT_PROMPT_CLEAN=""
