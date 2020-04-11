# zprezto direnv plugin

## Installation

* Install [`direnv`](https://direnv.net/), probably with

```
brew install direnv
```

* Install the contrib repo

```
cd $ZPREZTODIR
git clone --recurse-submodules https://github.com/belak/prezto-contrib contrib
```

* Install the plugin, edit your `.zpreztorc` file to have:

```
zstyle ':prezto:load' pmodule \
   ... \
   'direnv' \
   ...
```
