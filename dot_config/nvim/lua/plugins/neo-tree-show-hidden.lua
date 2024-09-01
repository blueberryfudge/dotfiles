return {
  "nvim-neo-tree/neo-tree.nvim",

  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  opts = {
    filesystem = {
      filtered_items = {
        visible = true,
      },
    },
    default_component_configs = {
      git_status = {
        symbols = {
          unstaged = "󰏫",
          untracked = "",
        },
      },
      --name = { use_git_status_colors = false },
      buffers = {
        follow_current_file = {
          enabled = true,
        },
      },
      file_size = {
        enabled = false,
        required_width = 64, -- min width of window required to show this column
      },
      type = {
        enabled = false,
        required_width = 122, -- min width of window required to show this column
      },
      last_modified = {
        enabled = false,
        required_width = 88, -- min width of window required to show this column
      },
      created = {
        enabled = false,
        required_width = 110, -- min width of window required to show this column
      },
      symlink_target = {
        enabled = false,
      },
    },

    auto_expand_width = true,
  },
}
