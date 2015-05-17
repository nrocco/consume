#compdef consume

_base_urls() {
    ls ~/.httpie/sessions
}

_sessions() {
    ls .httpie/sessions/$line[1] | sed 's/.json//'
}

arguments=(
    '1:base_url:($(_base_urls))'
    '2: :(as)'
    '3:session:($(_sessions))'
)

_arguments -s $arguments
