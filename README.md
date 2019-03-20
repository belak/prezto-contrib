# prezto-contrib

[Prezto][1] is a configuration framework for zsh aimed at providing better
defaults and other conveniences. However, to avoid feature bloat in the core
repository, prezto-contrib was born. This repository is meant to include
additional modules which are either not ready for inclusion in prezto-core or
don't currently have a maintainer willing to support them.

## Usage

Multiple module directory support is built into prezto, so it's pretty easy to
use these modules. Simply do the following:

```
cd $ZPREZTODIR
git clone --recurse-submodules https://github.com/belak/prezto-contrib contrib
```

After the repo is cloned, you can load modules in the same way you'd load a
normal prezto module.

Alternatively, you can clone contrib elsewhere and update the module dirs
setting.

[1]: https://github.com/sorin-ionescu/prezto
