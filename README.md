# `olive-crt.nvim`

`olive-crt.nvim` is a neovim colorscheme shaped around a retro olive CRT look, expanded into a readable editor theme with both dark and light variants.

![olive-crt base palette swatch](assets/olive-crt-swatch.svg)

![olive-crt.nvim dark and light theme preview](assets/olive-crt-preview.png)

## Features

- dark and light variants driven by `:set background=`
- neovim support for treesitter, diagnostics, LSP references, semantic tokens, and common plugins
- semantic palette roles so colors stay consistent across UI and syntax
- extras for terminal emulators and tmux, and more.

## Installation

use your preferred plugin manager.

With `lazy.nvim`:

```lua
{
  "vimcolorschemes/olive-crt.nvim",
  lazy = false,
  priority = 1000,
  opts = {},
}
```

## Usage

With the default settings:

```lua
vim.cmd.colorscheme("olive-crt")
```

Switch between variants with Neovim's built-in background setting:

```vim
set background=dark
colorscheme olive-crt

set background=light
colorscheme olive-crt
```

## Setup

Only call `setup()` if you want to change the defaults:

```lua
local olive_crt = require("olive_crt")

olive_crt.setup({
  transparent = false,
  styles = {
    comments = {},
    keywords = { bold = true },
    functions = {},
    strings = {},
    variables = {},
  },
  plugins = {
    telescope = true,
    gitsigns = true,
    which_key = true,
    cmp = true,
    neo_tree = true,
    oil = true,
    notify = true,
    mini = true,
    treesitter_context = true,
  },
  overrides = {},
})

vim.cmd.colorscheme("olive-crt")
```

## Extras

The repo ships matching extras for:

- ghostty: [dark](extras/ghostty/olive-crt-dark) / [light](extras/ghostty/olive-crt-light)
- kitty: [dark](extras/kitty/olive-crt-dark.conf) / [light](extras/kitty/olive-crt-light.conf)
- wezterm: [dark](extras/wezterm/olive-crt-dark.lua) / [light](extras/wezterm/olive-crt-light.lua)
- alacritty: [dark](extras/alacritty/olive-crt-dark.toml) / [light](extras/alacritty/olive-crt-light.toml)
- tmux: [dark](extras/tmux/olive-crt-dark.conf) / [light](extras/tmux/olive-crt-light.conf)
- iTerm2: [dark](extras/iterm2/olive-crt-dark.itermcolors) / [light](extras/iterm2/olive-crt-light.itermcolors)
- opencode: [olive-crt](extras/opencode/olive-crt.json) (single file with both flavors; auto-switches with terminal background)

Using Omarchy? Check out the matching Omarchy themes:

- [omarchy-olive-crt-dark-theme](https://github.com/reobin/omarchy-olive-crt-dark-theme)
- [omarchy-olive-crt-light-theme](https://github.com/reobin/omarchy-olive-crt-light-theme)
