#compdef consume

_base_urls() {
    ls ${CONSUME_BASEDIR:-${HOME}/.httpie/sessions}
}

_sessions() {
    if [[ "yes" == "${CONSUME_ENCRYPTED}" ]]
    then
        ls ${CONSUME_BASEDIR:-${HOME}/.httpie/sessions}/$line[1] | grep '.json.gpg' | sed 's/.json.gpg//'
    else
        ls ${CONSUME_BASEDIR:-${HOME}/.httpie/sessions}/$line[1] | grep '.json' | sed 's/.json//'
    fi
}

arguments=(
    '1:base_url:($(_base_urls))'
    '2: :(as)'
    '3:session:($(_sessions))'
)

_arguments -s $arguments
