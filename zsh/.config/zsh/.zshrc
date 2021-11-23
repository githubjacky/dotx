CONDA_PATH=/opt/miniconda3
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('$CONDA_PATH/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "$CONDA_PATH/etc/profile.d/conda.sh" ]; then
        . "$CONDA_PATH/etc/profile.d/conda.sh"
    else
        export PATH="$CONDA_PATH/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# Enable colors and change prompt
autoload -U colors && colors
#PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M%{$fg[red]%}]%{$reset_color%}$%b "
eval "$(starship init zsh)"

# History in cache directory:
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history


# some useful options (man zshoptions)
setopt autocd extendedglob nomatch menucomplete
setopt interactive_comments
stty stop undef		# Disable ctrl-s to freeze terminal.
zle_highlight=('paste:none')

# beeping is annoying
unsetopt BEEP


# tab/completions
autoload -U compinit
zstyle ':completion:*' menu select
# zstyle ':completion::complete:lsof:*' menu yes select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
zle -N autosuggest-accept



# Useful Functions
source "$ZDOTDIR/source/tool/zsh-function"

# Normal files to source
source_tool_file "zsh-vim-mode"
source_tool_file "zsh-alias"

# Theme files to source
source_theme_file "dracula-syntax-highlighting"
source_theme_file "zsh-autopair"
source_theme_file "zsh-autosuggestions"
source_theme_file "zsh-syntax-highlighting"


# key bindings
bindkey -s '^r' 'ranger_cd\n'
bindkey '^f' autosuggest-accept

