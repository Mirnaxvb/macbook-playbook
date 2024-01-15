return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    },
    opts = {
      filesystem = {
        filtered_items = {
           hide_dotfiles = false,
           hide_gitignored = false,
           hide_by_name = {
              '.DS_Store',
           },
          never_show = {},
        },
      }
    },
    config = function ()
    	vim.keymap.set('n', '<leader>nn', ':Neotree filesystem reveal left<CR>', {})
    	vim.keymap.set('n', '<leader>ng', ':Neotree float git_status<CR>', {})
    	vim.keymap.set('n', '<leader>nr', ':Neotree reveal<CR>', {})
    end
}
