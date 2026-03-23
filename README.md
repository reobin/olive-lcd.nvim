# `olive-lcd.nvim`

`olive-lcd.nvim` is a neovim colorscheme built from a retro-style olive LCD palette, expanded into a higher-contrast editor theme with both dark and light variants.

The original four source tones are used as the backbone for backgrounds and default foregrounds:

- `#33372f`
- `#717967`
- `#b8bdb2`
- `#d7d9d3`

From there, `olive-lcd.nvim` adds restrained earthy accents so code remains readable across syntax groups, diagnostics, git changes, search, and modern neovim UI.

## Features

- dark and light variants driven by `:set background=`
- neovim support for treesitter, diagnostics, LSP references, semantic tokens, and common plugins
- semantic palette roles so colors stay consistent across UI and syntax

## Installation

use your preferred plugin manager.

With `lazy.nvim`:

```lua
{
  "reobin/olive-lcd.nvim",
  lazy = false,
  priority = 1000,
  opts = {},
}
```

## Usage

```lua
vim.cmd.colorscheme("olive-lcd")
```

Switch between variants with Neovim's built-in background setting:

```vim
set background=dark
colorscheme olive-lcd

set background=light
colorscheme olive-lcd
```

## Setup

```lua
require("olive_lcd").setup({
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
```

Then load the colorscheme:

```lua
vim.cmd.colorscheme("olive-lcd")
```

## Notes

- Neovim support targets modern highlight groups such as `@markup.*`, `@lsp.type.*`, `LspInlayHint`, and `Diagnostic*`.
