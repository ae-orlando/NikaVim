# NikaVim Documentation Index

Use this file as the map for the rest of the documentation.

## Start Here

| Goal | Read |
| --- | --- |
| Get running quickly | [QUICKSTART.md](./QUICKSTART.md) |
| Complete first-time setup | [SETUP.md](./SETUP.md) |
| Learn the keymaps | [KEYMAPS.md](./KEYMAPS.md) |
| Understand the full configuration | [README.md](./README.md) |
| Customize or troubleshoot | [ADVANCED.md](./ADVANCED.md) |
| Review changes over time | [CHANGELOG.md](./CHANGELOG.md) |
| Contribute changes | [CONTRIBUTING.md](./CONTRIBUTING.md) |

## First Run

1. Open Neovim:

   ```bash
   nvim
   ```

2. Wait for the `NikaVim ready!` message.

3. Install language servers:

   ```vim
   :Mason
   ```

4. Try the core navigation keys:

   | Key | Action |
   | --- | --- |
   | `<Space>ff` | Find files |
   | `<Space>fg` | Search text |
   | `<Space>fb` | Find buffers |
   | `<C-n>` | Toggle file explorer |
   | `K` | Hover documentation |
   | `gd` | Go to definition |

## Configuration Map

```text
~/.config/nvim/
|-- init.lua
|-- lua/
|   |-- core/
|   |   |-- options.lua
|   |   `-- keymaps.lua
|   `-- plugins/
|       |-- ui.lua
|       |-- treesitter.lua
|       |-- lsp.lua
|       |-- completion.lua
|       |-- telescope.lua
|       |-- editing.lua
|       |-- formatting.lua
|       `-- git.lua
`-- docs and project files
```

## Feature Areas

| Area | Main Files |
| --- | --- |
| Editor options | `lua/core/options.lua` |
| Global keymaps | `lua/core/keymaps.lua` |
| Theme and dashboard | `lua/plugins/ui.lua` |
| LSP and Mason | `lua/plugins/lsp.lua` |
| Completion and snippets | `lua/plugins/completion.lua` |
| Search | `lua/plugins/telescope.lua` |
| Formatting and linting | `lua/plugins/formatting.lua` |
| Git | `lua/plugins/git.lua` |
| Editing helpers | `lua/plugins/editing.lua` |
| Syntax highlighting | `lua/plugins/treesitter.lua` |

## Common Commands

```vim
:Lazy          " Manage plugins
:Mason         " Install language servers, formatters, and linters
:checkhealth   " Diagnose setup issues
:LspInfo       " Inspect active language servers
:Lazy profile  " Inspect plugin startup cost
```

## Customization Path

1. Start with [README.md](./README.md) for the project shape.
2. Change keymaps in `lua/core/keymaps.lua`.
3. Change plugin behavior in the relevant `lua/plugins/*.lua` file.
4. Use [ADVANCED.md](./ADVANCED.md) when you need examples or troubleshooting notes.
