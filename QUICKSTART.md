# Quick Start

This is the fastest path from a fresh NikaVim checkout to a usable editor.

## 1. Open Neovim

```bash
nvim
```

Lazy.nvim installs plugins automatically on first launch. Wait for the `NikaVim ready!` message.

## 2. Install Language Servers

Open Mason:

```vim
:Mason
```

Install the servers for the languages you use. A good starter set is:

- `lua_ls`
- `pyright`
- `ts_ls`
- `html`
- `cssls`

Close Mason with `q`.

## 3. Try the Core Workflow

| Action | Key |
| --- | --- |
| Find files | `<Space>ff` |
| Search project text | `<Space>fg` |
| Switch buffers | `<Space>fb` |
| Open recent files | `<Space>fr` |
| Toggle file explorer | `<C-n>` |
| Hover documentation | `K` |
| Go to definition | `gd` |
| Rename symbol | `<F2>` |
| Format code | `<F3>` |
| Code action | `<F4>` |

## 4. Install Formatters and Linters

Open Mason again:

```vim
:Mason
```

Useful tools:

| Language | Tools |
| --- | --- |
| Lua | `stylua`, `luacheck` |
| Python | `black`, `isort`, `pylint` |
| JavaScript/TypeScript | `prettier`, `eslint_d` |
| Markdown | `markdownlint`, `prettier` |

Formatting runs on save when a formatter is available. You can also run `<Space>fp`.

## 5. Learn the Next Layer

- Read [KEYMAPS.md](./KEYMAPS.md) for the full keymap reference.
- Read [SETUP.md](./SETUP.md) for a fuller first-time checklist.
- Read [ADVANCED.md](./ADVANCED.md) for customization and troubleshooting.

## Common First Checks

```vim
:checkhealth
:Lazy
:Mason
:LspInfo
```

If something feels off, start with `:checkhealth`, then check whether the relevant language server or formatter is installed in Mason.
