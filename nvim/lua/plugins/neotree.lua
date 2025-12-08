return {
  "nvim-neo-tree/neo-tree.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- optional
    "MunifTanjim/nui.nvim",
  },
  event = "VimEnter", -- lazy load on start
  config = function()
    require("neo-tree").setup({
      -- your config
    })

    -- Open on startup if no file specified
    vim.api.nvim_create_autocmd("VimEnter", {
      callback = function()
        if vim.fn.argc() == 0 then
          require("neo-tree.command").execute({ action = "show" })
        end
      end,
    })
  end,
}
