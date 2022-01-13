# Dotfiles [![CI](https://github.com/nahueespinosa/.dotfiles/actions/workflows/build.yml/badge.svg)](https://github.com/nahueespinosa/.dotfiles/actions/workflows/build.yml)

These are the configuration files and plugins that I use for command-line programs.
I **do not recommend** installing them unless you're willing to overwrite the dotfiles on your machine. However, feel free to copy whatever you want.

Powered by [dotbot](https://github.com/anishathalye/dotbot/).

## Requirements

These configuration files have been tested in `Ubuntu 20.04` with:

- `cmake 3.16.3`
- `git 2.25.1`
- `python 3.8.10`
- `tmux 3.0a`
- `vim 8.1.2269`
- `zsh 5.8`

## Installation

Change directory to `$HOME` and clone this repository:

```bash
cd $HOME && git clone git@github.com:nahueespinosa/.dotfiles.git
```

Install dotfiles:

```bash
~/.dotfiles/install
```

Make `zsh` your default shell if you haven't already:

```bash
chsh -s $(which zsh)
```

## License

[MIT](LICENSE)
