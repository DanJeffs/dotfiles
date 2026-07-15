local M = {
  "nvim-neotest/neotest",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "antoinemadec/FixCursorHold.nvim",
    "rcasia/neotest-java",
    "nvim-neotest/neotest-python"
  }
}

function M.config()
  require("neotest").setup({
    adapters = {
      require("neotest-java")({
          ignore_wrapper = false, -- whether to ignore maven/gradle wrapper
      }),
      require("neotest-python")({
        python = "./venv/bin/python",
      })
    }
  })
end

return M
