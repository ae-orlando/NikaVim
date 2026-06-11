# 🎯 Quick Start in 5 Minutes

## 1️⃣ Open Neovim (1 minute)

```bash
nvim
```

**What happens**: Lazy.nvim installs all plugins automatically. Wait for the message "✨ Neovim ready!"

## 2️⃣ Install Language Servers (2 minutes)

Press `:` and type:
```vim
:Mason
```

**Install these:**
- Search for `lua_ls` → press `i` → wait for ✓
- Search for `pyright` → press `i` → wait for ✓  
- Search for `ts_ls` → press `i` → wait for ✓

Press `q` to close Mason.

## 3️⃣ Try Key Features (2 minutes)

### Find Files
Press `<Space>` (Space bar) and then `ff`:
```
<Space>ff
```
Type filename to search!

### Search Text
Press `<Space>` and then `fg`:
```
<Space>fg
```
Type to search all files!

### Toggle File Explorer
Press `Ctrl+n`:
```
Ctrl+n
```

### Go to Definition
- Open a file
- Type: `from collections import defaultdict` (Python example)
- Place cursor on `defaultdict`
- Press `gd`

### Get Hover Documentation
- Place cursor on any code
- Press `K`

## 🔑 Essential Keys (Always Use Space First!)

| Key | Action |
|-----|--------|
| `<Space>ff` | Find files |
| `<Space>fg` | Search text |
| `<Space>fb` | Find buffers |
| `<C-n>` | Toggle file explorer |
| `Ctrl+h/j/k/l` | Move between splits |
| `Tab` | Next buffer |
| `<S-Tab>` | Previous buffer |
| `K` | Documentation (hover) |
| `gd` | Go to definition |
| `gr` | Go to references |
| `<F2>` | Rename symbol |
| `<F3>` | Format code |
| `gc` | Comment line |
| `:q` | Quit |
| `:w` | Save |

## 💡 Pro Tips

**Exit Insert Mode**: Press `j` then `k` quickly (jk mapping)

**Save File**: Press `Ctrl+s`

**Open Terminal**: Press `<Space>t` then type command

**Undo**: Press `u`

**Redo**: Press `Ctrl+r`

**Find & Replace**: 
```vim
:%s/oldword/newword/g
```

## 🆘 Something Not Working?

### Completion not working?
Make sure you installed language servers in Mason:
```vim
:Mason
```

### Git colors not showing?
Make sure you're in a git repo:
```bash
cd /path/to/project
nvim
```

### Colors look weird?
```vim
:colorscheme tokyonight
```

### Things are slow?
```vim
:checkhealth
```

## 📖 Learn More

1. **Keybindings**: See [KEYMAPS.md](./KEYMAPS.md)
2. **Setup Help**: See [SETUP.md](./SETUP.md)
3. **Full Guide**: See [README.md](./README.md)
4. **Advanced**: See [ADVANCED.md](./ADVANCED.md)

## ⚡ Common Workflows

### Python Development
```bash
nvim project.py
```
- `<Space>ff` - Find files
- `gd` - Jump to imports
- `K` - See type hints
- `<F3>` - Format with black
- `<Space>fg` - Search functions

### JavaScript/TypeScript
```bash
nvim app.ts
```
- `<Space>fg` - Find component usage
- `<F2>` - Rename across project
- `<F4>` - Code actions (generate types)
- `gc` - Comment out lines

### Git Workflow
```bash
nvim .
```
- `<Space>gs` - See git status
- `]c` - Next changed line
- `<Space>hs` - Stage hunk
- `<Space>gc` - Commit

## 🎉 You're Ready!

That's it! You now have a professional code editor. Start editing:

```bash
nvim yourfile.py
# or
nvim .  # Open current folder
```

Happy coding! 🚀

---

**Got stuck?** Press `:help` for Neovim documentation
**Want to customize?** Edit `~/.config/nvim/lua/` files
**Need help?** Check [ADVANCED.md](./ADVANCED.md#troubleshooting)
