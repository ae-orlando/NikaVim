# 🚀 First Time Setup Checklist

Complete this checklist after installing Neovim with this config:

## Immediate Setup (5 minutes)

- [ ] **Install plugins**: Open Neovim (`nvim`) and let Lazy install plugins
  - Lazy will auto-install on first launch
  - Wait for "NikaVim ready!" message
  - Close Neovim (`:q`)

- [ ] **Verify installation**:
  ```bash
  nvim --version      # Should be 0.8+
  nvim +checkhealth   # Check for issues
  ```

## Core Setup (10 minutes)

- [ ] **Install language servers** (choose your languages):
  ```bash
  # Option 1: Interactive (recommended)
  nvim +Mason
  # Search for and install: lua_ls, pyright, ts_ls, html, cssls, etc.
  
  # Option 2: Command line
  nvim --headless +MasonInstall\ lua_ls\ pyright\ ts_ls\ html\ cssls +qall
  ```

- [ ] **Install formatters** (optional but recommended):
  - In Mason: Install `stylua`, `black`, `prettier`
  - Or use the setup script: `bash setup.sh`

- [ ] **Test LSP**:
  - Create a file: `test.lua`
  - Type and use Ctrl+Space for completion
  - Press `K` to hover
  - Use `gd` to go to definition

## Optional Enhancements (15 minutes)

- [ ] **Configure git** (if not already done):
  ```bash
  git config --global user.name "Your Name"
  git config --global user.email "your@email.com"
  ```

- [ ] **Test git features**:
  - Open a git repo
  - Press `<leader>gs` to see git status
  - Navigate changes with `]c` and `[c`

- [ ] **Customize keymaps** (if desired):
  - Edit `lua/core/keymaps.lua`
  - Add your custom keybindings
  - Reload: `:source %`

- [ ] **Customize theme** (if desired):
  - Edit `lua/plugins/ui.lua`
  - Change tokyonight style or install different theme
  - Test: `:colorscheme` and press Tab for options

## Post-Setup Learning

- [ ] **Learn core keymaps**:
  - `<leader>ff` - Find files
  - `<leader>fg` - Search text
  - `<C-n>` - Toggle file explorer
  - `K` - Documentation
  - `gd` - Go to definition
  - See [KEYMAPS.md](./KEYMAPS.md) for full list

- [ ] **Read documentation**:
  - [README.md](./README.md) - Overview and features
  - [KEYMAPS.md](./KEYMAPS.md) - Keyboard shortcuts
  - [ADVANCED.md](./ADVANCED.md) - Customization guide

- [ ] **Practice**:
  - Try `:Telescope` commands
  - Use LSP features (hover, goto, rename)
  - Test commenting with `gc`
  - Use surround with `ys`

## Troubleshooting Checklist

If something doesn't work:

- [ ] **Plugins not installed**: Run `:Lazy sync`
- [ ] **LSP not working**: Run `:LspInfo` and `:checkhealth`
- [ ] **Completion not working**: Install LSP servers in Mason
- [ ] **Colors wrong**: `:set termguicolors` and `:colorscheme tokyonight`
- [ ] **Performance issues**: Run `nvim --startuptime startup.log`

See [ADVANCED.md](./ADVANCED.md#common-issues--solutions) for detailed troubleshooting.

## Configuration Files to Know

| File | Purpose |
|------|---------|
| `init.lua` | Main entry point (minimal) |
| `lua/core/options.lua` | Editor settings |
| `lua/core/keymaps.lua` | Keyboard shortcuts |
| `lua/plugins/*.lua` | Plugin definitions |
| `README.md` | Documentation |
| `KEYMAPS.md` | Keymap reference |
| `ADVANCED.md` | Advanced customization |

## Quick Commands

```vim
:Mason              " Install/manage language servers
:Lazy               " Manage plugins
:Telescope find_files " Search files
:Telescope live_grep  " Search text
:LspInfo            " See active language servers
:checkhealth        " Verify setup
:help options       " View all vim options
```

## Success! 🎉

If you've completed all steps and everything works:
- LSP features (hover, goto, completion) ✓
- Telescope search ✓
- Formatting and linting ✓
- Git integration ✓
- Keymaps working ✓

You're ready to start coding! 

For issues or questions, check [ADVANCED.md](./ADVANCED.md) or `:help` in Neovim.

---

**Next**: Start coding with `nvim yourfile.py` or `nvim .`
