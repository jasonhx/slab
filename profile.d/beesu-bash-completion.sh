
[ -z "$BASH_VERSION" ] && return

_beesu()
{
    local curw
    COMPREPLY=()
    curw=${COMP_WORDS[COMP_CWORD]}
    COMPREPLY=($(compgen -c -f -b -- $curw))
    return 0
}

complete -o default -F _beesu beesu

