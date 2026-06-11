# NikaVim - Neovim IDE Distribution
A modern, feature-rich Neovim configuration with LSP, completion, formatting, and beautiful UI.

---

🚀 Transform Neovim into a powerful IDE within minutes with NikaVim.
## � Requirements

### Minimum Requirements
- **Neovim**: v0.9.0 or higher (v0.10+ recommended for best experience)
- **Git**: For plugin management via Lazy.nvim
- **Build tools**: GCC/Clang (Linux) or MSVC/MinGW (Windows) or Xcode (macOS)
---

## ✨ Features

### Core Features
- **Modern package manager**: Lazy.nvim for fast, lazy-loading plugins
- **Language Server Protocol (LSP)**: Built-in LSP with Mason for easy LSP/formatter/linter installation
- **Autocompletion**: nvim-cmp with snippet support (LuaSnip)
- **Syntax highlighting**: Tree-sitter for accurate syntax highlighting
- **Fuzzy finder**: Telescope for fast file/buffer/text search
- **Git integration**: Gitsigns + vim-fugitive for Git operations
- **Code formatting**: Conform.nvim for multi-language formatting
- **Linting**: Lint.nvim for code quality checks
- **Beautiful UI**: Tokyo Night theme, Lualine statusline, indent guides, dashboard

### Editing Enhancements
- Comment.nvim for easy code commenting
- Auto-pairs for automatic bracket closing
- Surround.nvim for quote/bracket manipulation
- Undo tree visualization
- Better match highlighting (vim-matchup)
- Code refactoring (ThePrimeagen's refactoring.nvim)
- Smart text objects (mini.ai)

## �📁 Directory Structure

```
~/.config/nvim/
├── init.lua                 # Main entry point (minimal & clean)
├── lazy-lock.json          # Plugin lock file
├── lua/
│   ├── core/
│   │   ├── init.lua        # Loads core modules
│   │   ├── options.lua     # Neovim settings
│   │   └── keymaps.lua     # Keyboard mappings
│   └── plugins/
│       ├── init.lua        # Plugin loader
│       ├── ui.lua          # UI plugins (theme, statusline, etc)
│       ├── treesitter.lua  # Syntax highlighting
│       ├── lsp.lua         # Language server setup
│       ├── completion.lua  # Autocompletion
│       ├── telescope.lua   # Fuzzy finder
│       ├── editing.lua     # Editor enhancements
│       ├── formatting.lua  # Code formatting & linting
│       └── git.lua         # Git integration
```

## 🚀 Quick Start

### 1. Install Dependencies

**Linux/macOS:**
```bash
# Install build tools
sudo apt-get install build-essential cmake  # Ubuntu/Debian
# or
brew install cmake  # macOS

# Install Python for deno/node support
python3 -m pip install --user pynvim
```

**Windows:**
```bash
# Install MSVC Build Tools or MinGW
# Install Python
python -m pip install pynvim
```

### 2. First Launch

```bash
nvim
```

Lazy.nvim will automatically install all plugins. This may take a minute on first launch.

### 3. Install LSP Servers

Open Neovim and run:
```vim
:Mason
```

This opens the Mason UI where you can install language servers. Install:
- `lua_ls` (Lua)
- `pyright` (Python)
- `ts_ls` (JavaScript/TypeScript)
- `html` (HTML)
- `cssls` (CSS)
- Any other language you need

**Or install via command line:**
```bash
nvim --headless +MasonInstall\ lua_ls\ pyright\ ts_ls\ html\ cssls +qa
```

### 4. Install Formatters & Linters (Optional)

```vim
:Mason
```

Install:
- `stylua` (Lua formatting)
- `black` (Python)
- `prettier` (JS/TS)
- `pylint` (Python linting)
- `eslint_d` (JS/TS linting)

## ⌨️ Key Mappings

### Leader Key: `<Space>`

#### File & Buffer Management
- `<leader>ff` - Find files
- `<leader>fg` - Live grep (search in files)
- `<leader>fb` - Find buffers
- `<leader>fr` - Recent files
- `<leader>fh` - Help tags
- `<leader>fc` - Commands
- `<Tab>` - Next buffer
- `<S-Tab>` - Previous buffer
- `<leader>bd` - Delete buffer
- `<leader>w` - Save
- `<leader>q` - Quit

#### Navigation
- `<C-h/j/k/l>` - Move between splits
- `<C-Up/Down/Left/Right>` - Resize splits
- `<C-n>` - Toggle file explorer
- `<leader>e` - Focus file explorer

#### Code Editing
- `jk` - Exit insert mode
- `<F2>` - Rename symbol (LSP)
- `<F3>` - Format code
- `<F4>` - Code actions (LSP)
- `<C-j/k>` - Jump to next/prev snippet
- `gc` - Toggle comment (in visual mode or on line)
- `ys<motion><char>` - Surround with char (surround.nvim)
- `cs<old><new>` - Change surrounding
- `<C-Space>` - Start incremental selection

#### Search & Navigation
- `/` or `?` - Search
- `n/N` - Next/previous result (centered)
- `<Esc>` - Clear search highlight
- `*/#` - Search word under cursor
- `K` - Hover LSP documentation
- `gd` - Go to definition
- `gD` - Go to declaration
- `gi` - Go to implementation
- `gr` - Go to references
- `go` - Go to type definition

#### Git Operations
- `]c/[c` - Next/previous git change
- `<leader>hs` - Stage hunk
- `<leader>hu` - Undo stage hunk
- `<leader>hr` - Reset hunk
- `<leader>hp` - Preview hunk
- `<leader>hb` - Blame line
- `<leader>tb` - Toggle blame
- `<leader>hd` - Diff this file
- `<leader>gc` - Git commit
- `<leader>gp` - Git push
- `<leader>gl` - Git log
- `<leader>gs` - Git status

#### Tools
- `<leader>l` - Lazy plugin manager
- `<leader>m` - Mason package manager
- `<leader>u` - Undo tree
- `<leader>t` - Terminal
- `<leader>fp` - Format with conform
- `<leader>fl` - Lint with nvim-lint

#### Terminal Mode
- `<Esc>` - Exit terminal mode

## 📚 Common Tasks

### Adding a New Plugin

Edit `lua/plugins/` and add to the appropriate file:

```lua
{
  "author/plugin.nvim",
  event = "BufReadPost",  -- Load when editing buffer
  config = function()
    require("plugin").setup({})
  end,
}
```

Then run `:Lazy` and Lazy will install it automatically.

### Adding Custom Keymaps

Edit `lua/core/keymaps.lua`:

```lua
map("n", "<leader>xx", function()
  -- Your function here
end, { desc = "Description" })
```

### Configuring LSP for a New Language

1. Install the LSP in Mason: `:Mason` and search/install
2. It should work automatically via `mason-lspconfig`
3. For custom config, edit `lua/plugins/lsp.lua` and add to handlers

### Changing Color Scheme

Edit `lua/plugins/ui.lua` and change the colorscheme:

```lua
require("tokyonight").setup({
  style = "night",  -- "night", "storm", "day", "moon"
})
```

Or install a different theme and update this section.

## 🔧 Customization

### Options

Edit `lua/core/options.lua` to modify:
- Tab/indent settings
- Number display
- Search behavior
- Performance settings
- etc.

### Performance Tuning

If Neovim feels slow:

1. Check startup time: `nvim --startuptime startup.log` then `:e startup.log`
2. Lazy-load more plugins by adding `event`, `cmd`, or `keys` triggers
3. Check for heavy plugin configurations
4. Use `:checkhealth` to identify issues

## 🐛 Troubleshooting

### Plugins not installing
```vim
:Lazy sync
```

### LSP not working
```vim
:Mason  " Install language servers
:checkhealth  " Check for configuration issues
```

### Colors look wrong
```vim
:set background=dark
:colorscheme tokyonight
```

### Performance issues
```vim
:LspInfo  " Check active LSP servers
:Lazy profile  " Check plugin load times
```

## 📖 Resources

- [Neovim Docs](https://neovim.io/doc/user/)
- [Lazy.nvim](https://github.com/folke/lazy.nvim)
- [LSP Config](https://github.com/neovim/nvim-lspconfig)
- [Telescope](https://github.com/nvim-telescope/telescope.nvim)
- [Tree-sitter](https://tree-sitter.github.io/tree-sitter/)

## � Future Improvements

- [ ] Add debugging support (DAP)
- [ ] Implement project-specific config overrides
- [ ] Add testing framework integration
- [ ] Create community snippet library
- [ ] Add window management plugins
- [ ] Implement terminal integration improvements

## 🤝 Contributing

We welcome contributions! Please see [CONTRIBUTING.md](./CONTRIBUTING.md) for detailed guidelines on:

- Types of contributions we accept
- Development setup and workflow
- Commit message conventions
- Code style and testing requirements
- Pull request process
- Issue reporting templates

---

## �📝 Notes

This configuration is designed for:
- **Modern development** (JavaScript, Python, Go, Rust, C/C++, etc.)
- **Extensibility** (easy to add plugins and customize)
- **Performance** (lazy loading plugins as needed)
- **User experience** (beautiful UI and intuitive keymaps)

Feel free to modify any part to suit your workflow!
