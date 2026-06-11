-- ~/.config/nvim/lua/plugins/ui.lua
-- UI and visual enhancements

return {
  -- Beautiful colorscheme
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("tokyonight").setup({
        style = "night",
        transparent = false,
        styles = {
          comments = { italic = true },
          keywords = { bold = true },
        },
      })
      vim.cmd.colorscheme("tokyonight")
    end,
  },

  -- Modern statusline
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("lualine").setup({
        options = {
          theme = "tokyonight",
          component_separators = { left = "", right = "" },
          section_separators = { left = "", right = "" },
          globalstatus = true,
        },
        sections = {
          lualine_a = { "mode" },
          lualine_b = { "branch", "diff" },
          lualine_c = {
            "filename",
            "diagnostics",
          },
          lualine_x = { "encoding", "fileformat", "filetype" },
          lualine_y = { "progress" },
          lualine_z = { "location" },
        },
      })
    end,
  },

  -- File icons
  {
    "nvim-tree/nvim-web-devicons",
    lazy = true,
  },

  -- File explorer
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("nvim-tree").setup({
        view = {
          width = 30,
          side = "left",
        },
        renderer = {
          icons = {
            show = {
              file = true,
              folder = true,
              folder_arrow = true,
            },
          },
        },
        filters = {
          dotfiles = false,
          custom = { ".git", "node_modules", "__pycache__" },
        },
        sync_root_with_cwd = true,
      })
    end,
  },

  -- Buffer tabs
  {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("bufferline").setup({
        options = {
          mode = "tabs",
          separator_style = "slant",
          always_show_bufferline = true,
          show_buffer_close_icons = true,
          show_close_icon = true,
        },
      })
    end,
  },

  -- Better UI (input/select dialogs)
  {
    "stevearc/dressing.nvim",
    lazy = true,
    config = function()
      require("dressing").setup({
        input = { relative = "cursor" },
        select = { backend = { "telescope", "fzf", "builtin" } },
      })
    end,
  },

  -- Indent guides
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    config = function()
      require("ibl").setup({
        indent = { char = "│" },
        scope = { enabled = true },
      })
    end,
  },

  -- Dashboard/startup screen
  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("dashboard").setup({
        theme = "doom",
        config = {
          header = {
            "",
            "                                                     ",
            "  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗",
            "  ████╗  ██║██╔════╝██╔════╝ ██║   ██║██║████╗ ████║",
            "  ██╔██╗ ██║█████╗  ██║  ███╗██║   ██║██║██╔████╔██║",
            "  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║",
            "  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║",
            "  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝",
            "                                                     ",
          },
          center = {
            {
              icon = " ",
              icon_hl = "Title",
              desc = "Find Files",
              desc_hl = "String",
              key = "f",
              keymap = "SPC f f",
              action = "Telescope find_files",
            },
            {
              icon = " ",
              icon_hl = "Title",
              desc = "Recent Files",
              desc_hl = "String",
              key = "r",
              keymap = "SPC f r",
              action = "Telescope oldfiles",
            },
            {
              icon = " ",
              icon_hl = "Title",
              desc = "Find Words",
              desc_hl = "String",
              key = "g",
              keymap = "SPC f g",
              action = "Telescope live_grep",
            },
            {
              icon = " ",
              icon_hl = "Title",
              desc = "Lazy",
              desc_hl = "String",
              key = "l",
              keymap = "SPC l",
              action = "Lazy",
            },
          },
          footer = { "Vim motions. Infinite possibilities." },
        },
      })
    end,
  },
}
