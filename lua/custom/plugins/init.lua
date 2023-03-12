-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  -- icons
  'nvim-tree/nvim-web-devicons', -- optional, for file icons
  -- auto pairs
  {
  "windwp/nvim-autopairs",
  config = function()
    require("nvim-autopairs").setup {}
  end
  },
  {
    'nvim-tree/nvim-tree.lua',
    tag = 'nightly', -- optional, updated every week. (see issue #1193)
    config = function ()
      require("nvim-tree").setup({
        sort_by = "case_sensitive",
        renderer = {
          group_empty = true,
        },
        actions = {
          open_file = {
            quit_on_open = true
          },
        },
        filters = {
          dotfiles = true,
        },
      })
    end
  },
  -- bufferline
  {
    'akinsho/bufferline.nvim',
    config = function ()
      require("bufferline").setup{

      }
    end
  },
}
