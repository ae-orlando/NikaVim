# 📚 NikaVim Documentation Index

Use this file as the map for the rest of the documentation.

---

## 🚀 Start Here

| Goal | Read |
|------|------|
| Get running in 5 minutes | [QUICKSTART.md](./QUICKSTART.md) |
| Complete first-time setup | [SETUP.md](./SETUP.md) |
| Learn all the keybindings | [KEYMAPS.md](./KEYMAPS.md) |
| Understand the full feature set | [README.md](./README.md) |
| Customize or troubleshoot | [ADVANCED.md](./ADVANCED.md) |
| Review version history | [CHANGELOG.md](./CHANGELOG.md) |
| Contribute changes | [CONTRIBUTING.md](./CONTRIBUTING.md) |

---

## ⚡ First Run

```bash
nvim
```

1. Wait for `✨ NikaVim ready!`
2. Install language servers: `:Mason`
3. Try the basics:

| Key | Action |
|-----|--------|
| `<Space>ff` | Find files |
| `<Space>fg` | Search text |
| `<C-n>` | Toggle file explorer |
| `<Space>tt` | Open terminal |
| `K` | Hover documentation |
| `gd` | Go to definition |

---

## 🗂️ Configuration Map

```text
~/.config/nvim/
├── init.lua                 # Entry point
├── lazy-lock.json           # Plugin lock file
├── lua/
│   ├── core/
│   │   ├── init.lua         # Core loader
│   │   ├── options.lua      # Editor options
│   │   └── keymaps.lua      # Global keymaps
│   └── plugins/             # 30 feature modules
│       ├── init.lua         # Plugin registry
│       ├── ui.lua           # Theme, statusline, explorer, dashboard
│       ├── treesitter.lua   # Syntax highlighting, text objects
│       ├── lsp.lua          # LSP, Mason, inlay hints, code lens, rename preview
│       ├── completion.lua   # Completion, snippets
│       ├── telescope.lua    # Fuzzy finding
│       ├── editing.lua      # Comments, pairs, surround, multi-cursor, etc.
│       ├── formatting.lua   # Formatting + linting
│       ├── git.lua          # Gitsigns, fugitive, git graph
│       ├── whichkey.lua     # Keybinding discovery
│       ├── trouble.lua      # Diagnostics panel
│       ├── debug.lua        # Debugger (DAP)
│       ├── test.lua         # Test runner (neotest)
│       ├── markdown.lua     # Markdown preview
│       ├── project.lua      # Project detection
│       ├── copilot.lua      # GitHub Copilot
│       ├── terminal.lua     # Integrated terminal
│       ├── ai.lua           # Copilot Chat
│       ├── visuals.lua      # Zen mode, twilight, colorizer
│       ├── session.lua      # Session persistence
│       ├── navic.lua        # Breadcrumbs + navbuddy
│       ├── tasks.lua        # Task runner
│       ├── tools.lua        # Database + REST client
│       ├── minimap.lua      # Code minimap
│       ├── screencast.lua   # Keystroke display
│       ├── octo.lua         # GitHub PRs / issues
│       ├── flash.lua        # Flash navigation
│       ├── todo.lua         # TODO/FIXME highlighting
│       ├── notify.lua       # Notifications + cmdline UI
│       └── harpoon.lua      # File bookmarks
├── README.md
├── KEYMAPS.md
├── QUICKSTART.md
├── SETUP.md
├── ADVANCED.md
├── CHANGELOG.md
├── INDEX.md
├── CONTRIBUTING.md
└── images/
```

---

## 🎯 Feature Areas

| Area | Key Files |
|------|-----------|
| Editor options | `lua/core/options.lua` |
| Global keymaps | `lua/core/keymaps.lua` |
| Theme & dashboard | `lua/plugins/ui.lua` |
| LSP & Mason | `lua/plugins/lsp.lua` |
| Completion & snippets | `lua/plugins/completion.lua` |
| Search | `lua/plugins/telescope.lua` |
| Formatting & linting | `lua/plugins/formatting.lua` |
| Git | `lua/plugins/git.lua` |
| Editing helpers | `lua/plugins/editing.lua` |
| Syntax highlighting | `lua/plugins/treesitter.lua` |
| Keybinding discovery | `lua/plugins/whichkey.lua` |
| Diagnostics & symbols | `lua/plugins/trouble.lua` |
| Debugger | `lua/plugins/debug.lua` |
| Test runner | `lua/plugins/test.lua` |
| Markdown | `lua/plugins/markdown.lua` |
| Project management | `lua/plugins/project.lua` |
| Copilot | `lua/plugins/copilot.lua` |
| Terminal | `lua/plugins/terminal.lua` |
| AI Chat | `lua/plugins/ai.lua` |
| Visual enhancements | `lua/plugins/visuals.lua` |
| Sessions | `lua/plugins/session.lua` |
| Breadcrumbs & outline | `lua/plugins/navic.lua` |
| Task runner | `lua/plugins/tasks.lua` |
| Database & REST | `lua/plugins/tools.lua` |
| Minimap | `lua/plugins/minimap.lua` |
| Screencast | `lua/plugins/screencast.lua` |
| GitHub PRs | `lua/plugins/octo.lua` |
| Flash navigation | `lua/plugins/flash.lua` |
| Todo highlights | `lua/plugins/todo.lua` |
| Notifications | `lua/plugins/notify.lua` |
| File bookmarks | `lua/plugins/harpoon.lua` |

---

## 🧰 Common Commands

```vim
" Plugin management
:Lazy         " Manage plugins
:Lazy sync    " Install / update plugins
:Lazy profile " Profile startup time

" Tools
:Mason        " Install language servers, formatters, linters

" Diagnostics
:checkhealth  " Check setup status
:LspInfo      " Inspect active language servers

" Debugging
:DBUIToggle   " Open database UI
:OverseerToggle " Show task panel
:TodoTrouble  " Browse TODO/FIXME markers

" Navigation
:Telescope find_files
:Telescope live_grep
:Telescope buffers
:Navbuddy     " Code outline tree
```

---

## 🛤️ Customization Path

1. Start with [README.md](./README.md) for the project shape
2. Change keymaps in `lua/core/keymaps.lua`
3. Change plugin behaviour in the relevant `lua/plugins/*.lua` file
4. Use [ADVANCED.md](./ADVANCED.md) for examples and troubleshooting
5. Disable a feature by setting `enabled = false` in its plugin spec
