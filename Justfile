set shell := [ "bash", "-uc" ]

# This is just dumb. just-ts-mode breaks w/o this line
# (it thinks export is a variable)
[working-directory: "."]
export:
        emacs --script ./export.el

watch:
        watchexec -d 2s just export

clean:
        rm -rf ./export

lighttpd:
        open http://127.0.0.1
        lighttpd -D -f lighttpd.conf

develop:
        just watch&
        just lighttpd
