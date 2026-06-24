# 🚀 First-Time Setup Checklist

Complete this checklist after installing NikaVim.

---

## ⚡ Immediate Setup (5 minutes)

- [ ] **Install plugins**: Open Neovim (`nvim`) and let Lazy install everything
  - Lazy auto-installs on first launch
  - Wait for `✨ NikaVim ready!`
  - Close Neovim (`:q`)

- [ ] **Verify installation**:
  ```bash
  nvim --version        # Should be 0.10+
  nvim +checkhealth     # Check for issues
  ```

---

## 🛠️ Core Setup (10 minutes)

- [ ] **Install language servers** for your languages:
  ```bash
  # Interactive (recommended)
  nvim +Mason
  
  # Or headless command line
  nvim --headless +MasonInstall\ lua_ls\ pyright\ ts_ls\ html\ cssls +qall
  ```

- [ ] **Install formatters** (optional):
  - In Mason: install `stylua`, `black`, `prettier`

- [ ] **Test LSP**:
  - Create `test.lua`
  - Type and use `<C-Space>` for completion
  - Press `K` to hover
  - Use `gd` to go to definition

- [ ] **Configure git** (if not already done):
  ```bash
  git config --global user.name "Your Name"
  git config --global user.email "your@email.com"
  ```

---

## 🧪 Feature Setup

### Terminal

- [ ] Press `<Space>tt` to toggle terminal
- [ ] Press `<Esc>` in terminal mode to return to normal mode
- [ ] Try `<Space>tF` for floating terminal

### Debugger

- [ ] Open a supported file (Python, JS, C++, Rust)
- [ ] Set a breakpoint: `<Space>db`
- [ ] Start debugging: `<Space>dc`
- [ ] Step through code: `<Space>di` (into), `<Space>do` (over), `<Space>dO` (out)

### Test Runner

- [ ] Open a test file (Python `test_*.py`, JS `*.test.ts`, etc.)
- [ ] Run nearest test: `<Space>tr`
- [ ] Run all tests: `<Space>ta`
- [ ] View test summary: `<Space>ts`

### Git

- [ ] Open a git repository
- [ ] Press `<Space>gs` to see git status
- [ ] Navigate changes with `]c` and `[c`
- [ ] Stage hunks: `<Space>hs`
- [ ] View commit graph: `<Space>gg`

### Copilot AI

- [ ] Authenticate: `:Copilot setup`
- [ ] Accept suggestion in insert mode: `<M-l>`
- [ ] Open chat panel: `<Space>ac`

### Database & REST

- [ ] Configure a database connection in `~/.config/nvim/db_ui.json`
- [ ] Open DB UI: `<Space>Du`
- [ ] Create an `.http` file and run requests: `<Space>Rt`

### GitHub

- [ ] Authenticate: `gh auth login`
- [ ] List issues: `<Space>gi`
- [ ] List PRs: `<Space>gpr`

### Flash Navigation

- [ ] Press `s` in normal mode, then type 2 characters → jump labels appear
- [ ] Press the label to jump

### File Bookmarks (Harpoon)

- [ ] Open files and add them: `<Space>ha`
- [ ] Quick switch: `<Space>hh`
- [ ] Jump to slots: `<Space>h1` through `<Space>h5`

---

## 🎨 Customization (Optional)

- [ ] **Change keymaps**: Edit `lua/core/keymaps.lua`, then `:source %`
- [ ] **Change theme**: In `lua/plugins/ui.lua`, change `style` to `storm`, `moon`, or `day`
- [ ] **Disable a feature**: Add `enabled = false` to any plugin spec in `lua/plugins/*.lua`
- [ ] **Add a plugin**: Follow the pattern in `lua/plugins/init.lua` and run `:Lazy sync`

---

## 📖 Post-Setup Learning

- [ ] Read [README.md](./README.md) for the full feature overview
- [ ] Read [KEYMAPS.md](./KEYMAPS.md) for the complete keymap reference
- [ ] Read [ADVANCED.md](./ADVANCED.md) for customization and troubleshooting

---

## 🔍 Troubleshooting Checklist

| Symptom | Fix |
|---------|-----|
| Plugins not installed | `:Lazy sync` |
| LSP not working | `:LspInfo` + `:checkhealth` |
| Completion not working | Install LSP server in Mason |
| Formatting not working | Install formatter in Mason |
| Debugger not starting | `:DapInstall` and check `lua/plugins/debug.lua` |
| Tests not running | Check test adapter in `lua/plugins/test.lua` |
| Terminal not opening | Check `lua/plugins/terminal.lua` |
| Copilot not responding | `:Copilot setup` to authenticate |
| Colors look wrong | `:set termguicolors` + `:colorscheme tokyonight` |
| Startup feels slow | `:Lazy profile` or `nvim --startuptime startup.log` |

> See [ADVANCED.md](./ADVANCED.md#common-issues--solutions) for detailed troubleshooting.

---

## ✅ Success Checklist

- [ ] LSP features work (hover, goto, completion)
- [ ] Telescope search works (`<Space>ff`, `<Space>fg`)
- [ ] Formatting and linting work (`<F3>`)
- [ ] Git integration works (`<Space>gs`, `]c`)
- [ ] Terminal works (`<Space>tt`)
- [ ] Debugger works (`<Space>db`, `<Space>dc`)
- [ ] Test runner works (`<Space>tr`)
- [ ] All keybindings from [KEYMAPS.md](./KEYMAPS.md) are functional

---

**Next**: Start coding with `nvim yourfile.py` or `nvim .`
