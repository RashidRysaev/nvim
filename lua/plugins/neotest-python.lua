return {
  {
    "nvim-neotest/neotest-python",
    dependencies = {
      "nvim-neotest/neotest",
    },
    event = "VeryLazy",
  },
  {
    "nvim-neotest/neotest",
    dependencies = {
      "nvim-neotest/nvim-nio",
      "nvim-lua/plenary.nvim",
      "antoinemadec/FixCursorHold.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
    event = "VeryLazy",
    config = function()
      require("neotest").setup({
        adapters = {
          require("neotest-python"),
        },
      })
    end,
    keys = {
      {
        "dm",
        "<cmd>lua require('neotest').run.run()<cr>",
        desc = "Run single test function / method",
      },
      {
        "dM",
        "<cmd>lua require('neotest').run.run({strategy = 'dap'})<cr>",
        desc = "Run single test function / method DAP",
      },
      { "df", "<cmd>lua require('neotest').run.run({vim.fn.expand('%')})<cr>", desc = "Run test class" },
      {
        "dF",
        "<cmd>lua require('neotest').run.run({vim.fn.expand('%'), strategy = 'dap'})<cr>",
        desc = "Run test class DAP",
      },
      -- { "dS", "<cmd>lua require('neotest').summary.toggle()<cr>", desc = "Show test summary" },
      {
        "dS",
        function()
          require("neotest").summary.toggle()
          local win = vim.fn.bufwinid("Neotest Summary")
          if win > -1 then -- show summary and checkout the summer buffer
            vim.api.nvim_set_current_win(win)
          end
        end,
        desc = "Show test summary",
      },
    },
  },
}
