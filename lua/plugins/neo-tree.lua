return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require("neo-tree").setup({
      window = {
        position = "right",
      },
    })

    vim.keymap.set("n", "<leader>e", ":Neotree toggle <cr>", {})
    vim.keymap.set("n", "<leader>r", ":Neotree reveal <cr>", {})
    vim.keymap.set("n", "<leader>w", ":Neotree filesystem close<cr>", {})
    -- vim.keymap.set("n", "<leader>e", ":Neotree filesystem reveal<cr>", {})
  end,
}
