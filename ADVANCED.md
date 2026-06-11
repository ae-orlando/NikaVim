# Advanced Configuration & Troubleshooting Guide

## Performance Optimization

### 1. Check Startup Time
```bash
nvim --startuptime startup.log
nvim startup.log  # View the log
```

Look for plugins taking >50ms and consider:
- Adding `event`, `cmd`, or `keys` to lazy-load them
- Disabling unused plugins
- Moving heavy initialization to after startup

### 2. Optimize Plugin Loading

Most plugins in this config are already lazy-loaded:
- `event = "BufReadPost"` - Load when opening a file
- `cmd = "CommandName"` - Load when a command is used
- `keys = { ... }` - Load when a keymap is pressed

Add these to any plugin that doesn't have a lazy-load trigger.

### 3. Memory Usage
```vim
:edit! /proc/self/status  " View memory usage (Linux)
```

If memory usage is high:
- Check which LSP servers are running: `:LspInfo`
- Disable LSP servers you don't need
- Close large files

### 4. LSP Performance
If LSP is slow:
```vim
:LspInfo  " See active servers
:LspStart  " Start LSP
:LspStop   " Stop LSP
```

For specific file types:
```lua
-- In lua/plugins/lsp.lua, add this to handlers
your_language = function()
  -- Configuration here
end,
```

## Customization Examples

### Adding a Custom Theme
```lua
-- In lua/plugins/ui.lua, replace tokyonight with:
{
  "your-org/your-theme.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd.colorscheme("your-theme")
  end,
}
```

### Disabling a Plugin
Option 1: Comment it out in its plugin file
Option 2: Use lazy's enabled option:
```lua
{
  "plugin/name.nvim",
  enabled = false,  -- Completely disable
}
```

### Custom Keymaps
Add to `lua/core/keymaps.lua`:
```lua
-- Example: Quick Git commit
map("n", "<leader>gac", function()
  vim.cmd("Git add .")
  vim.cmd("Git commit -m 'Quick commit'")
end, { desc = "Add all & commit" })
```

### LSP Configuration for New Language
1. Install LSP in Mason: `:Mason` → search → install
2. For custom config, edit `lua/plugins/lsp.lua`:
```lua
mylang_ls = function()
  require("lspconfig").mylang_ls.setup({
    settings = {
      -- Your settings
    },
  })
end,
```

### Adding a New Plugin

Example: Adding `which-key.nvim` for command help
```lua
-- In lua/plugins/editing.lua, add:
{
  "folke/which-key.nvim",
  event = "VeryLazy",
  config = function()
    require("which-key").setup({})
  end,
}
```

Then run `:Lazy sync` to install.

## Common Issues & Solutions

### LSP Not Working

**Check 1:** Is LSP server installed?
```vim
:Mason
" Search for your language server
" If not there, install it
```

**Check 2:** Check LSP logs
```vim
:LspLog
```

**Check 3:** Verify LSP is attached to buffer
```vim
:LspInfo
```

**Check 4:** Check neovim version
LSP requires neovim 0.5+
```vim
:version
```

### Completion Not Working

**Check:** Is LSP installed?
```vim
:LspInfo
```

**Try:** Manually trigger completion
```vim
<C-Space>
```

**Check:** Cmp configuration
```vim
:checkhealth
```

### Telescope Not Finding Files

**Check:** Ignore patterns in `lua/plugins/telescope.lua`

Files in `.gitignore` are automatically ignored.

**Add custom ignore:**
```lua
file_ignore_patterns = {
  "node_modules",
  ".git/",
  "your_pattern",
},
```

### Colors Look Wrong

```vim
:set background=dark    " or light
:colorscheme tokyonight " Reset theme
:redraw!               " Force redraw
```

Also check terminal color support:
```vim
:set termguicolors     " Should be on
```

### Plugin Not Loading

**Lazy not loading plugin?**
```vim
:Lazy sync  " Reinstall all plugins
```

**Plugin has errors?**
```vim
:Lazy log  " View plugin logs
```

**Check if lazy-loaded correctly:**
```lua
-- Verify event/cmd/keys is set
event = "BufReadPost",
cmd = "CommandName",
keys = { { "<leader>xx" } },
```

### Mason Servers Not Working

**Download failed?**
```vim
:Mason  " Try again
```

**Clear cache:**
```bash
rm -rf ~/.local/share/nvim/mason
```

### Formatting Not Working

**Check 1:** Is formatter installed?
```vim
:Mason
" Search and install your formatter (prettier, black, stylua, etc)
```

**Check 2:** Is conform configured?
```lua
-- In lua/plugins/formatting.lua
formatters_by_ft = {
  python = { "black" },
  -- Add your language
},
```

**Check 3:** Manual format
```vim
<F3>  " Or :Format command
```

## Debugging

### Enable LSP Debug Mode
```lua
-- Add to lua/plugins/lsp.lua
vim.lsp.set_log_level("debug")
```

Then check logs:
```vim
:LspLog
```

### Profile Plugin Loading
```vim
:Lazy profile
```

Shows which plugins take the longest to load.

### Health Check
```vim
:checkhealth
```

Shows issues with configuration and dependencies.

## Advanced Tips

### Creating a Custom Command
```lua
-- Add to lua/core/keymaps.lua
vim.api.nvim_create_user_command("MyCommand", function()
  -- Your code
end, {})
```

### Creating an Autocommand
```lua
-- Auto-format on save
vim.api.nvim_create_autocmd("BufWritePost", {
  callback = function()
    vim.lsp.buf.format()
  end,
})
```

### Conditional Plugin Loading
```lua
{
  "plugin/name.nvim",
  enabled = vim.fn.executable("required_tool") == 1,
}
```

### Overriding LSP Diagnostics

```lua
-- In lua/plugins/lsp.lua
vim.diagnostic.config({
  virtual_text = false,
  signs = true,
  underline = true,
  update_in_insert = false,
})
```

## Performance Checklist

- [ ] Run `:checkhealth` - fix any warnings
- [ ] Check startup time with `--startuptime`
- [ ] Only install language servers you need (`:Mason`)
- [ ] Enable lazy-loading for heavy plugins
- [ ] Disable unused plugins with `enabled = false`
- [ ] Use `:Lazy profile` to find slow plugins
- [ ] Keep formatters/linters lean

## Resources

- [Neovim Options Docs](https://neovim.io/doc/user/options.html)
- [Neovim API Docs](https://neovim.io/doc/user/api.html)
- [Lazy.nvim Docs](https://github.com/folke/lazy.nvim)
- [LSPConfig Wiki](https://github.com/neovim/nvim-lspconfig/wiki)
- [Telescope Docs](https://github.com/nvim-telescope/telescope.nvim/wiki)
