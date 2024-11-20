return {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        -- setup nvim-tree and custom keybinds
        require("nvim-tree").setup({})
        vim.keymap.set('n', '<leader>n', ':NvimTreeToggle<CR>', {})
    end
}