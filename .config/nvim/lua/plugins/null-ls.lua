return {
  {'nvimtools/none-ls.nvim',
  ft= {"python"},

   opts = function()
    local null_ls = require("null-ls")
    null_ls.setup({
      sources = {
        null_ls.builtins.diagnostics.mypy,
        null_ls.builtins.formatting.black
      }
    })
  end
  }
}
