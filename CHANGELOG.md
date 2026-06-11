# Changelog

All notable changes to this Neovim configuration are documented here.

## [v1.1.0] - 2026-06-11

### 🐛 Bug Fixes

#### Tree-Sitter Module Name Error (Critical)
**Issue**: Tree-sitter plugin failed to load due to incorrect module reference
- **Error**: `module 'nvim-treesitter.configs' not found`
- **Root Cause**: Referenced `nvim-treesitter.configs` (plural) when actual module is `nvim-treesitter.config` (singular)
- **Files Affected**: `lua/plugins/treesitter.lua` (2 locations)
- **Fix**: 
  - Changed `require("nvim-treesitter.configs")` → `require("nvim-treesitter.config")`
  - Applied to both main treesitter plugin and treesitter-textobjects plugin
  - Added safe `pcall` wrapper to prevent crashes if module unavailable
  - Changed lazy-loading from `event = "VeryLazy"` to `lazy = false` for reliability

**Status**: ✅ Fixed and tested

### ⚙️ Configuration Changes

#### Tree-Sitter Loading Strategy
- Changed loading behavior from `event = "VeryLazy"` to `lazy = false`
- Ensures tree-sitter is available when needed by other plugins
- Added error handling with `pcall` for graceful degradation
- Applied to:
  - `nvim-treesitter/nvim-treesitter`
  - `nvim-treesitter/nvim-treesitter-textobjects`
  - `JoosepAlviste/nvim-ts-context-commentstring`

### ✅ Testing & Verification

All features tested and verified working:
- ✅ Neovim version: v0.12.2
- ✅ Lazy.nvim: Installed and functional
- ✅ Plugins: 40+ plugins loading correctly
- ✅ Mason: 10+ language servers/tools installed
- ✅ LSP framework: Ready for use
- ✅ Dashboard: Loads with ASCII art header
- ✅ File structure: All 9 plugin config files present
- ✅ Startup: Clean initialization, no syntax errors

### 📝 Documentation Added

Created comprehensive documentation:
- `CHANGELOG.md` - Version history and changes
- `INDEX.md` - Navigation guide for all documentation
- `QUICKSTART.md` - 5-minute setup guide
- `SETUP.md` - Complete setup checklist
- `KEYMAPS.md` - 80+ keyboard shortcuts
- `README.md` - Full feature documentation
- `ADVANCED.md` - Customization and optimization guide
- `IMPROVEMENTS.md` - Before/after comparison

### 📦 Project Structure

```
~/.config/nvim/
├── init.lua (30 lines, clean entry point)
├── README.md
├── SETUP.md
├── QUICKSTART.md
├── KEYMAPS.md
├── ADVANCED.md
├── IMPROVEMENTS.md
├── CHANGELOG.md (this file)
├── INDEX.md
├── setup.sh
├── .gitignore
├── lazy-lock.json
└── lua/
    ├── core/
    │   ├── init.lua
    │   ├── options.lua
    │   └── keymaps.lua
    └── plugins/
        ├── init.lua
        ├── ui.lua
        ├── lsp.lua
        ├── completion.lua
        ├── treesitter.lua ← Fixed
        ├── telescope.lua
        ├── editing.lua
        ├── formatting.lua
        └── git.lua
```

---

## [v1.0.0] - 2026-06-11

### ✨ Initial Release

**Complete Neovim IDE setup with:**

#### Core Features
- **Package Management**: Lazy.nvim with smart lazy-loading
- **Language Servers**: Mason with 10+ languages configured
- **Code Completion**: nvim-cmp with snippet support (LuaSnip)
- **Syntax Highlighting**: Tree-sitter with text objects
- **Fuzzy Finding**: Telescope with FZF integration
- **Code Formatting**: Conform.nvim (auto-format on save)
- **Linting**: Lint.nvim for code quality
- **Git Integration**: Gitsigns + vim-fugitive

#### UI Enhancements
- **Theme**: Tokyo Night (modern, sleek)
- **Statusline**: Lualine with git info and diagnostics
- **File Explorer**: NvimTree with icons
- **Buffer Tabs**: Bufferline with smart management
- **Dashboard**: Custom startup screen with ASCII art
- **Indent Guides**: Visual indentation markers

#### Editing Tools
- **Comments**: Comment.nvim (smart, context-aware)
- **Auto-Pairs**: Automatic bracket/quote closing
- **Surround**: Easy bracket/quote manipulation
- **Refactoring**: Code refactoring support
- **Text Objects**: Smart selection and navigation
- **Undo Tree**: Visual undo history

#### Configuration
- **80+ Keybindings**: Organized by feature
- **Smart Options**: Optimized Neovim settings
- **Modular Structure**: 9 plugin files for easy customization

#### Documentation
- Complete feature guide
- Setup instructions
- Keyboard shortcut reference
- Troubleshooting guide
- Customization examples

### Supported Languages
- ✅ Lua, Python, JavaScript, TypeScript
- ✅ HTML, CSS, JSON, YAML, Bash
- ✅ C/C++, Rust, and more via Mason

---

## Notes for Next Updates

### Known Limitations
- Tree-sitter requires `build` step on first install
- LSP servers must be installed separately via `:Mason`
- Some complex snippets require LuaSnip configuration

---

**Last Updated**: 2026-06-11  
**License**: MIT
