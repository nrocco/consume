# consume

A wrapper around HTTPie for easy RESTapi access


## installation

**IMPORTANT NOTE**

This wrapper script depends on this pull request [Base URL feature #217](https://github.com/jakubroztocil/httpie/pull/217).

Because this feature has not been merged into `HTTPie` yet (and maybe it never
will), you need to have my forked version of `HTTPie`.

I recommend installing it in a virtual environment:

    $ pyvenv /var/venvs/consume
    $ cd /var/venvs/consume
    $ git clone https://github.com/nrocco/httpie.git
    $ cd httpie
    $ git checkout base-url
    $ /var/venvs/consume/bin/python setup.py install


To make the `http` program available you could create a symlink in a folder
somewhere on your `$PATH`:

    $ ln -s /var/venvs/consume/bin/http /usr/bin/http

**END OF IMPORTANT NOTE**

Now we got that sorted it is time to install `consume`:

Clone the git repository:

    $ cd /tmp
    $ git clone https://github.com/nrocco/consume.git


Use `make` to install the script and zsh completion file:

    $ cd consume
    $ make install


This will install the `consume` script on your path in `/usr/bin`.


## usage

The `consume` script is only usefull if you are using
[Sessions](https://github.com/jakubroztocil/httpie#sessions).

The following example explains best what `consume` does. Assume you invoke it
like this:

    $ consume my-api.example.org as tester GET /v1/apples


This will invoke `httpie` like this:

    HTTPIE_BASEURL=http://my-api.example.org http --session-read-only=tester GET /v1/apples


Which results in a `GET` request to the server, but that's all default
`HTTPie` functionality:

    GET / HTTP/1.1
    Accept: application/json
    Accept-Encoding: gzip, deflate
    Connection: keep-alive
    Host: my-api.example.org
    User-Agent: HTTPie/1.0.0-dev


The above example of using `consume` makes `HTTPie` read the session stored
in:

    ~/.httpie/sessions/my-api.example.org/tester.json


The session `tester.json` could have all kinds of headers (basic
authentication) stored.

Any option and/or argument except the first 4 are passed directly to `HTTPie`
without modification.
