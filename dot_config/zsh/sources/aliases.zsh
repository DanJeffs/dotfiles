# ########################### --Aliases-- ############################## #
# ¡NOTE!:  'alias -g ...' allows alias to work even if not first word in command
#           e.g. say    'al='alias'
#                then   > al  ~~> > alias
#                       > fd whatever | al ~~> fd whatever | alias
#                BUT    > sudo al  ~~> sudo al     <-- no expansion
#                       > echo al ~~> echo al      <-- no expansion
#               this can be corrected by globaling the alias, with the caveat
#               that that letter word will *always* expand
#
#  SEE: `which <alias>` to find what something is aliased to


# ----- ls series, but with color -----
# clasic ls, list view ll, and then an alias for tree also offered as 'lt'
# NOTE: I have included '--all' ('-a') for all of the ls series
#       that is not default behavior, but shows "hidden" files by default
#       and will help when exploring the systems we're using.
alias -g ls='eza --all'
alias -g ll='eza --all --long'
alias -g lt='eza --all --tree --level=3'
alias -g tree='eza --all --tree --level=6'

# ----- cat, but with color -----
alias -g cat='bat --paging=never'

# ----- man(pages), but with color -----
alias -g man='batman'

# ----- dig(DNS), but with color -----
alias -g dig='doggo'

# NOTE: three replacement commands are *NOT* shadowed here
#       they take different syntax
#       'rg' (ripgrep) mostly replaces 'grep', but has different syntax
#       'c'/'z' (zoxide) mostly replace 'cd', but fuzzy corrects to closest visisted dir
#       'fd' mostly replaces 'find', but has different syntax
#       (and not included as defaults in our repo, but 'sd' vs 'sed': same deal)
# ---------------------------

# ----------- git -----------
# git ~~()~~> "g"
# NOTE: similar, but different aliasing can be set in '.gitconfig'
#       those aliases are for the arguments that *follow* the 'git ' command

alias g='git'

alias ga='git add'
alias gau='git add --update'  # git add all tracked && updated files
alias grs='git restore --staged'  # un-stage files *specified*
alias gkh='git checkout HEAD'  # return files to last commit state (¡does not preserve changes as unstaged!)

alias gb='git branch'  # git list all branches if no further elaboration
alias gba='git branch --all'  # also list remote branches
alias gk='git checkout'

alias gc='git commit'
alias gcm='git commit --message'  # git commit along with commit message on line

alias gd='git diff'
alias gds='git diff --staged'

alias gf='git fetch'

alias glg='git log --all --decorate --oneline --graph'  # commit graph

alias gm='git merge'

alias gpush='git push'  # minimally abbreviated due to similarity to 'git pull'
alias gpull='git pull'

alias grem='git remote'
alias gremv='git remote --verbose'

alias gs='git status'

alias gt='git ls-tree' # give content info about a git work-tree

# ----------- neovim -----------
# nvim ~~()~~> "nn" Note: "nm" is a prexisting keyword AND 'nn' is apropos
alias nn='nvim'
alias nn.='nvim .'
# alias nvim='lvim'
# alias nn='nvim'
alias vimdiff='nvim -d'
# # neovide --multigrid ~~()~~> "nv"
# alias nv='neovide --multigrid'  # neovide is a GUI application for neovim

# ----------- varied -----------
# batman ~~()~~> "mab"
alias mab='batman'

# exa ~~()~~> "e"_fam  (~= "ls"_fam)
alias es='eza --all --classify  --icons --sort="type"'
alias el='eza --long --numeric --all --classify --header --icons --sort="type" --time-style="long-iso"'
alias et='eza --tree --all --ignore-glob=".git" --icons --sort="type" --level=3'  # tree: max_depth 3
alias etall='eza --tree --all --ignore-glob=".git" --icons --sort="type"'         # tree: unlimited depth

# ---------- chezmoi -----------
alias cz='chezmoi'
alias cze='chezmoi edit --apply'

# fzf... ~~()~~> "fzf"
# NOTE: fzf is involved enough to have its own file.
#       See the "--fzf--" section (below) for source reference.
#       Defined in that source file:
# alias -g fzf --<with bat preview>
#
# fd_hidden ~~()~~> "fdh"
alias fdh='fd --exclude="'"{.git,.venv}"'" --hidden'  # iclude hidden minus common noise
# NOTE:          ^ this takes a *glob* pattern, not a regex pattern
#
# [ripgrep] rg... ~~()~~> "rg"
# '-s' to add case sensitivity back
alias -g rg='rg --hidden --ignore-case'
# ^global to prevent silent fall back and subtle confusions that would ensue

# sets up zoxide, which operates as "z"
# z ~~()~~> "c"  (easier to type and a partial version of "cd", lol)
eval "$(zoxide init zsh)"
alias c='z'
alias ci='zi'