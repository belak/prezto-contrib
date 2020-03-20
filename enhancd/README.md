Enhancd
=======

Integrates [enhancd][1] into Prezto, which implements a next-generation cd
command with an interactive filter. [enhancd][1] will memorize all directories
visited by a user and use it for the pathname resolution.

Contributors
------------

New features and bug fixes should be submitted to the [enhancd][1] project
according to its rules and regulations. This module will be synchronized
against it.

Settings
--------

To specify list of one or more visual filters add the following line to
*zpreztorc*:

```sh
zstyle ":prezto:module:enhancd" filter "fzf:fzy:peco"
```

Available options include [fzy][2], [fzf][3], [peco][4] etc.

To specify a command to invoke [enhancd][1] add the following line to
*zpreztorc*, it may even replace `cd`:

```sh
zstyle ":prezto:module:enhancd" command "cd"
```

To set whether to show the full path or not when executing `..` add the
following line to *zpreztorc*

```sh
zstyle ":prezto:module:enhancd" show-fullpath "ENHANCD_DOT_SHOW_FULLPATH"
```

Troubleshooting
---------------

### Enhancd does not appear to work

Make sure the appropriate filters are installed (see [enhancd][1] installation
instructions). It is recommended to use [fzy][2].

Note that [enhancd][1] remembers directories only after first visited.

Authors
-------

*The authors of this module should be contacted via the [issue tracker][3].*

  - [Martin Zeman](https://github.com/N4M3Z)

[1]: https://github.com/b4b4r07/enhancd
[2]: https://github.com/jhawthorn/fzy
[3]: https://github.com/junegunn/fzf
[4]: https://github.com/peco/peco
[5]: https://github.com/sorin-ionescu/prezto/issues
