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

TODO

