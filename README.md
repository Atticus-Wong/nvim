# Neovim Config

Personal Neovim configuration using [lazy.nvim](https://github.com/folke/lazy.nvim) for plugin management and Mason for language tooling.

## Requirements

- Neovim 0.10 or newer
- Git
- A terminal with Nerd Font support recommended
- `ripgrep` recommended for Telescope search
- Language runtimes as needed for LSP tooling, such as Node.js, Python, Go, Java, or Clang

On macOS, the common dependencies can be installed with Homebrew:

```zsh
brew install neovim git ripgrep
```

## Installation

Back up any existing Neovim config first:

```zsh
mv ~/.config/nvim ~/.config/nvim.bak
```

Clone this repository into Neovim's config directory:

```zsh
git clone git@github.com:Atticus-Wong/nvim.git ~/.config/nvim
```

Start Neovim:

```zsh
nvim
```

On first launch, `lua/config/lazy.lua` automatically installs `lazy.nvim`, then lazy.nvim installs the configured plugins. Mason will install the configured LSP servers and formatters after the plugin setup completes.

## Updating

Pull the latest config changes:

```zsh
cd ~/.config/nvim
git pull
```

Then open Neovim and run:

```vim
:Lazy sync
:Mason
```

If Git reports local changes while updating, commit them or stash them first:

```zsh
git status
git stash -u
git pull
git stash pop
```

## Plugins

This config includes:

- autopairs
- comment
- gitsigns
- harpoon
- lazygit
- lspconfig
- lualine
- markdown
- mason
- navigator
- nvim-cmp
- oil
- rose-pine
- startload
- telescope
- treesitter
