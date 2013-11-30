if [[ -z $ZSH_THEME_CLOUD_PREFIX ]]; then
    ZSH_THEME_AC_BEGIN_PREFIX='☁'
    ZSH_THEME_AC_PREFIX='ッ'
fi


# PROMPT='%{$fg_bold[cyan]%}$ZSH_THEME_AC_BEGIN_PREFIX %{$fg_bold[green]%}%p %{$fg[green]%}%c %{$fg_bold[cyan]%}$(git_prompt_info)%{$fg_bold[blue]%} % %{$reset_color%}'


PROMPT='%{$fg_bold[cyan]%}$ZSH_THEME_AC_BEGIN_PREFIX  '

PROMPT+='%{$fg_bold[white]%}%n@%m% %{$fg_bold[red]%} %~ %{$reset_color%}'

PROMPT+='%{$fg_bold[cyan]%}$(git_prompt_info)%{$fg_bold[blue]%}%{$reset_color%}'

[[ -s ~/.rvm/scripts/rvm ]] && PROMPT+=\(`~/.rvm/bin/rvm-prompt`\)' '

PROMPT+='
%D{%d/%m %I:%M} %{$fg_bold[yellow]%}$ZSH_THEME_AC_PREFIX%{$reset_color%} '

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[green]%}[%{$fg[cyan]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[green]%}] %{$fg[yellow]%}⚡%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%}] "


