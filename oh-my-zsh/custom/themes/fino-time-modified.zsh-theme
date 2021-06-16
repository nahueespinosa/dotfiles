# fino-time-modified.zsh-theme

function virtualenv_info {
  [ $VIRTUAL_ENV ] && echo '('`basename $VIRTUAL_ENV`') '
}

function prompt_char {
  git branch >/dev/null 2>/dev/null && echo '⠵' && return
    echo '○'
}

function box_name {
  [ -f ~/.box-name ] && cat ~/.box-name || echo ${SHORT_HOST:-$HOST}
}

PROMPT="╭─\$(virtualenv_info)%{$FG[042]%}%n%{$reset_color%} %{$FG[239]%}at%{$reset_color%} %{$FG[032]%}$(box_name)%{$reset_color%} %{$FG[239]%}in%{$reset_color%} %{$FG[185]%}%~%{$reset_color%}\$(git_prompt_info)\$(ruby_prompt_info) %D - %*
╰─\$(prompt_char) "

ZSH_THEME_GIT_PROMPT_PREFIX=" %{$FG[239]%}on%{$reset_color%} %{$fg[255]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$FG[216]%} [dirty]"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$FG[036]%} [clean]"
ZSH_THEME_RUBY_PROMPT_PREFIX=" %{$FG[239]%}using%{$FG[243]%} ‹"
ZSH_THEME_RUBY_PROMPT_SUFFIX="›%{$reset_color%}"

# Override zsh highlighting plugin styles
typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[arg0]='fg=#d7d75f'
ZSH_HIGHLIGHT_STYLES[alias]='fg=#d78700'
ZSH_HIGHLIGHT_STYLES[path]='fg=#ffffff'
ZSH_HIGHLIGHT_STYLES[default]='fg=#aaaaaa'
ZSH_HIGHLIGHT_STYLES[unknown-token]='fg=#cf0000'

export VIRTUAL_ENV_DISABLE_PROMPT=true
