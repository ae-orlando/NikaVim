# ⚡ Quick Start

The fastest path from a fresh NikaVim checkout to a usable editor.

---

## 1. Open Neovim

```bash
nvim
```

Lazy.nvim installs plugins automatically on first launch. Wait for the `✨ NikaVim ready!` message.

---

## 2. Install Language Servers

```vim
:Mason
```

Install for the languages you use:

| Language | Server |
|----------|--------|
| Lua | `lua_ls` |
| Python | `pyright` |
| TypeScript / JavaScript | `ts_ls` |
| HTML | `html` |
| CSS | `cssls` |
| JSON | `jsonls` |
| YAML | `yamlls` |
| Bash | `bashls` |
| C / C++ | `clangd` |
| Rust | `rust_analyzer` |

Close Mason with `q`.

---

## 3. Try the Core Workflow

| Action | Key |
|--------|-----|
| Find files | `<Space>ff` |
| Search across files | `<Space>fg` |
| Switch buffers | `<Space>fb` |
| Open recent files | `<Space>fr` |
| Toggle file explorer | `<C-n>` |
| Hover documentation | `K` |
| Go to definition | `gd` |
| Rename symbol | `<Space>rn` |
| Format code | `<F3>` |
| Code actions | `<F4>` |

---

## 4. Essential IDE Features

### Integrated Terminal

| Action | Key |
|--------|-----|
| Toggle terminal | `<Space>tt` |
| Floating terminal | `<Space>tF` |
| Exit terminal mode | `<Esc>` |

### Debugger

| Action | Key |
|--------|-----|
| Toggle breakpoint | `<Space>db` |
| Start / continue | `<Space>dc` |
| Step over | `<Space>do` |
| Step into | `<Space>di` |

### Test Runner

| Action | Key |
|--------|-----|
| Run nearest test | `<Space>tr` |
| Run test file | `<Space>tf` |
| Run all tests | `<Space>ta` |

### Git

| Action | Key |
|--------|-----|
| Git status | `<Space>gs` |
| Git commit | `<Space>gc` |
| Git push | `<Space>gp` |
| Git log | `<Space>gl` |
| Git commit graph | `<Space>gg` |
| Stage hunk | `<Space>hs` |
| Toggle blame | `<Space>tb` |

### AI

| Action | Key |
|--------|-----|
| Toggle Copilot Chat | `<Space>ac` |
| Accept Copilot suggestion | `<M-l>` |
| Next suggestion | `<M-]>` |

### Navigation

| Action | Key |
|--------|-----|
| Flash jump to any character | `s` (forward) / `S` (backward) |
| File bookmarks (Harpoon) | `<Space>ha` add / `hh` menu |
| Code outline | `<Space>nb` |
| Toggle diagnostics | `<Space>xx` |
| Switch projects | `<Space>pp` |

---

## 5. Visual Features

| Action | Key |
|--------|-----|
| Toggle Zen mode | `<Space>zz` |
| Toggle minimap | `<Space>mm` |
| Toggle dashboard | Restart Neovim |
| Restore last session | `<Space>Sl` |
| Save session | `<Space>Ss` |

---

## 6. Install Formatters and Linters

```vim
:Mason
```

| Language | Formatter | Linter |
|----------|-----------|--------|
| Lua | `stylua` | `luacheck` |
| Python | `black`, `isort` | `pylint` |
| JavaScript / TypeScript | `prettier` | `eslint_d` |
| Markdown | `prettier` | `markdownlint` |

Formatting runs on save when a formatter is available. Manual format: `<F3>`.

---

## 7. Next Steps

- Read [KEYMAPS.md](./KEYMAPS.md) for the full keymap reference (80+ bindings)
- Read [SETUP.md](./SETUP.md) for a complete first-time checklist
- Read [ADVANCED.md](./ADVANCED.md) for customization and troubleshooting

---

## 🔍 Common First Checks

```vim
:checkhealth   " Check for issues
:Lazy          " Plugin manager
:Mason         " Tool installer
:LspInfo       " Active language servers
```
