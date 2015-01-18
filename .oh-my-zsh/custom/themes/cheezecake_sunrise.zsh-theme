#-------------------------------------------------------------------------------
# Modified by CheezeCake
# user currentdir ‹gitbranchname› »
#
# based on:
#
# Sunrise theme for oh-my-zsh by Adam Lindberg (eproxus@gmail.com)
# Intended to be used with Solarized: http://ethanschoonover.com/solarized
# (Needs Git plugin for current_branch method)
#-------------------------------------------------------------------------------

# Color shortcuts
R=$fg_no_bold[red]
G=$fg_no_bold[green]
M=$fg_no_bold[magenta]
Y=$fg_no_bold[yellow]
B=$fg_no_bold[blue]
RESET=$reset_color
GR=$fg[grey]

GIT_PROMPT="\$(git_prompt_info)"
PROMPT="%B%{$GR%}%n %{$FG[027]%}%c%{$RESET%} $GIT_PROMPT%{$R%}%B»%b%{$RESET%} "
# RPS1="%(?..%{$R%}%? ↵%{$RESET%})"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$Y%}‹"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$Y%}›%{$RESET%} "

ZSH_THEME_GIT_PROMPT_DIRTY="%{$R%}✗%{$RESET%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""

ZSH_THEME_GIT_PROMPT_AHEAD=" %{$B%}➔"

ZSH_THEME_GIT_STATUS_PREFIX=" "
