# My Neovim Configuration

A modular [Neovim](https://github.com/neovim/neovim) setup focused on developer productivity and easy language extensibility written in Lua.

## Features

- Lazy plugin manager
- LSP, linters and formatters with [Mason](https://github.com/mason-org/mason.nvim)
- Syntax highlighting via Treesitter
- Auto-formatting on save with cloroform
- Fuzzy finding with Telescope
- Git integration (signs, diffs, blame)
- Automatic pairing of brackets and quotes
- Project support for managing multiple workspaces
- File explorer (via nvim-tree and Telescope)
- Markdown, LaTeX and Typst preview support
- Custom statusline, theme and UI enhancements

## Dependencies

### Required

- `git` used by plugin manager and some plugins
- `tree-sitter` for syntax highlighting and parsing

### Recommended

- `ripgrep` used by Telescope for text search
- `fd` used by Telescope for file search

## Plugin List

| Plugin                                                                                          | Description                              |
| ----------------------------------------------------------------------------------------------- | ---------------------------------------- |
| [`folke/lazy.nvim`](https://github.com/folke/lazy.nvim)                                         | Plugin manager                           |
| [`mason-org/mason.nvim`](https://github.com/mason-org/mason.nvim)                               | LSP, linters and formatters              |
| [`hrsh7th/nvim-cmp`](https://github.com/hrsh7th/nvim-cmp)                                       | Autocompletion framework                 |
| [`nvim-treesitter/nvim-treesitter`](https://github.com/nvim-treesitter/nvim-treesitter)         | Treesitter syntax highlighting           |
| [`nvim-telescope/telescope.nvim`](https://github.com/nvim-telescope/telescope.nvim)             | Fuzzy finder                             |
| [`stevearc/conform.nvim`](https://github.com/stevearc/conform.nvim)                             | Code formatting manager                  |
| [`nvim-tree/nvim-tree.lua`](https://github.com/nvim-tree/nvim-tree.lua)                         | File explorer                            |
| [`lewis6991/gitsigns.nvim`](https://github.com/lewis6991/gitsigns.nvim)                         | Git signs and status in the gutter       |
| [`lukas-reineke/indent-blankline.nvim`](https://github.com/lukas-reineke/indent-blankline.nvim) | Indentation guides                       |
| [`goolord/alpha-nvim`](https://github.com/goolord/alpha-nvim)                                   | Startup dashboard                        |
| [`ray-x/lsp_signature.nvim`](https://github.com/ray-x/lsp_signature.nvim)                       | Inline function signature help           |
| [`windwp/nvim-autopairs`](https://github.com/windwp/nvim-autopairs)                             | Automatic pairing of brackets and quotes |
| [`ellisonleao/gruvbox.nvim`](https://github.com/ellisonleao/gruvbox.nvim)                       | Gruvbox theme                            |
| [`nvim-lualine/lualine.nvim`](https://github.com/nvim-lualine/lualine.nvim)                     | Statusline                               |
| [`chomosuke/typst-preview.nvim`](https://github.com/chomosuke/typst-preview.nvim)               | Typst live preview                       |
| [`iamcco/markdown-preview.nvim`](https://github.com/iamcco/markdown-preview.nvim)               | Markdown preview in browser              |
| [`lervag/vimtex`](https://github.com/lervag/vimtex)                                             | LaTeX integration                        |
| [`norcalli/nvim-colorizer.lua`](https://github.com/norcalli/nvim-colorizer.lua)                 | Display color codes with real colors     |
| [`monaqa/dial.nvim`](https://github.com/monaqa/dial.nvim)                                       | Better increment/decrement operations    |
