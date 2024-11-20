return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")
    -- code action sources
    local code_actions = null_ls.builtins.code_actions

    -- diagnostic sources
    local diagnostics = null_ls.builtins.diagnostics

    -- formatting sources
    local formatting = null_ls.builtins.formatting

    -- hover sources
    local hover = null_ls.builtins.hover

    -- completion sources
    local completion = null_ls.builtins.completion
    null_ls.setup({
      sources = {
        formatting.stylua,
        --null_ls.builtins.completion.spell,
        --require("none-ls.diagnostics.eslint"), -- requires none-ls-extras.nvim
      },
    })

    vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
  end,
}
