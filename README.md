# My Neovim Configuration

A modular [Neovim](https://github.com/neovim/neovim) setup focused on developer productivity and easy language extensibility written in Lua.

## Features

- Native LSP support easily extendable to other languages
- Syntax highlighting via Treesitter
- Auto-formatting on save
- Linting integration
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

### Language Tooling

| Language            | LSP                   | Formatter        | Other                                         |
| ------------------- | --------------------- | ---------------- | --------------------------------------------- |
| **C / C++**         | `clangd`              | `clang-format`   |                                               |
| **Markdown / JSON** |                       | `prettier`       |                                               |
| **Lua**             | `lua-language-server` | `stylua`         |                                               |
| **Python**          | `pyright`             | `black`, `isort` |                                               |
| **LaTeX**           | `texlab`              | `latexindent`    | `latexmk` (compiler), <br>`zathura` (preview) |
| **Typst**           | `tinymist`            | `typstyle`       |                                               |
| **SQL**             |                       | `pg_format`      |                                               |

## How to Add Support for Other Languages

### 1. LSP

- Find a good LSP in the [nvim-lspconfig documentation](https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md) and follow the instructions to install it in your system.
- In the `lspconfig.lua` file, add:

  ```lua
  vim.lsp.enable("lsp-name")
  ```

### 2. Formatter

- Find a good formatter in the [conform.nvim formatter list](https://github.com/stevearc/conform.nvim?tab=readme-ov-file#formatters) and follow the installation instructions.
- In `conform.lua`, add a line in the `formatters_by_ft` dictionary:

  ```lua
  <language> = { "name-of-formatter" }
  ```

### 3. Linting / Treesitter

- Treesitter should automatically detect and install what’s necessary.
- If you want to force installation, add the language to the `ensure_installed` list in `treesitter.lua`:

  ```lua
  ensure_installed = { ..., "<language>" }
  ```

## Plugin List

| Plugin                                                                                          | Description                               |
| ----------------------------------------------------------------------------------------------- | ----------------------------------------- |
| [`neovim/nvim-lspconfig`](https://github.com/neovim/nvim-lspconfig)                             | LSP configurations for multiple languages |
| [`hrsh7th/nvim-cmp`](https://github.com/hrsh7th/nvim-cmp)                                       | Autocompletion framework                  |
| [`nvim-treesitter/nvim-treesitter`](https://github.com/nvim-treesitter/nvim-treesitter)         | Treesitter syntax highlighting            |
| [`nvim-telescope/telescope.nvim`](https://github.com/nvim-telescope/telescope.nvim)             | Fuzzy finder                              |
| [`stevearc/conform.nvim`](https://github.com/stevearc/conform.nvim)                             | Code formatting manager                   |
| [`nvim-tree/nvim-tree.lua`](https://github.com/nvim-tree/nvim-tree.lua)                         | File explorer                             |
| [`lewis6991/gitsigns.nvim`](https://github.com/lewis6991/gitsigns.nvim)                         | Git signs and status in the gutter        |
| [`lukas-reineke/indent-blankline.nvim`](https://github.com/lukas-reineke/indent-blankline.nvim) | Indentation guides                        |
| [`goolord/alpha-nvim`](https://github.com/goolord/alpha-nvim)                                   | Startup dashboard                         |
| [`ray-x/lsp_signature.nvim`](https://github.com/ray-x/lsp_signature.nvim)                       | Inline function signature help            |
| [`windwp/nvim-autopairs`](https://github.com/windwp/nvim-autopairs)                             | Automatic pairing of brackets and quotes  |
| [`ellisonleao/gruvbox.nvim`](https://github.com/ellisonleao/gruvbox.nvim)                       | Gruvbox theme                             |
| [`nvim-lualine/lualine.nvim`](https://github.com/nvim-lualine/lualine.nvim)                     | Statusline                                |
| [`chomosuke/typst-preview.nvim`](https://github.com/chomosuke/typst-preview.nvim)               | Typst live preview                        |
| [`iamcco/markdown-preview.nvim`](https://github.com/iamcco/markdown-preview.nvim)               | Markdown preview in browser               |
| [`lervag/vimtex`](https://github.com/lervag/vimtex)                                             | LaTeX integration                         |
| [`norcalli/nvim-colorizer.lua`](https://github.com/norcalli/nvim-colorizer.lua)                 | Display color codes with real colors      |
| [`monaqa/dial.nvim`](https://github.com/monaqa/dial.nvim)                                       | Better increment/decrement operations     |
