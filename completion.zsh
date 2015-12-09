#compdef consume

_base_urls() {
    ls ${CONSUME_BASEDIR:-${HOME}/.httpie/sessions}
}

_sessions() {
    ls ${CONSUME_BASEDIR:-${HOME}/.httpie/sessions}/$line[1] | grep '.json' | sed -e 's/.json.gpg$//' -e 's/.json$//'
}

arguments=(
    '1:base_url:($(_base_urls))'
    '2: :(as)'
    '3:session:($(_sessions))'
)

_arguments -s $arguments
