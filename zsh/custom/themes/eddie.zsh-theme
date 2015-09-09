PROMPT=$'%{$fg_bold[blue]%}%n%{$reset_color%}@%{$fg_bold[green]%}%m %{$reset_color%}%{$fg_bold[yellow]%}[%~]%{$reset_color%} $(git_prompt_info)%{$fg_bold[white]%}\$%{$reset_color%} '

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}(± "
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY=")%{$fg[red]%}✗%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_CLEAN=")%{$fg[green]%}✓ %{$reset_color%}"

RPROMPT='%{$fg[yellow]%}⚡%{$reset_color%} $(battery_pct_prompt)%{$fg_bold[magenta]%} 🕐 %D{[%I:%M:%S]} %{$reset_color%}'
