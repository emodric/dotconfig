# get the name of the branch we are on
function git_prompt_info() {
  if [[ "$(command git config --get oh-my-zsh.hide-status 2>/dev/null)" != "1" ]]; then
    ref=$(command git symbolic-ref HEAD 2> /dev/null) || \
    ref=$(command git rev-parse --short HEAD 2> /dev/null) || return 0
    echo "$ZSH_THEME_GIT_PROMPT_PREFIX${ref#refs/heads/}$(git_prompt_status)$ZSH_THEME_GIT_PROMPT_SUFFIX"
  fi
}

ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[green]%} ●"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[red]%} ●"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[yellow]%} ●"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}( ± "
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg_bold[blue]%} ) %{$reset_color%}"

PROMPT=$'%{$fg_bold[blue]%}%n%{$reset_color%}%{$fg_bold[white]%}@%{$reset_color%}%{$fg_bold[green]%}%m %{$reset_color%}%{$fg_bold[yellow]%}[%~]%{$reset_color%} $(git_prompt_info)%{$fg_bold[white]%}\$%{$reset_color%} '

RPROMPT='%{$fg[yellow]%}⚡%{$reset_color%} $(battery_pct_prompt)%{$fg_bold[magenta]%} 🕓 %D{[%H:%M:%S]} %{$reset_color%}'
