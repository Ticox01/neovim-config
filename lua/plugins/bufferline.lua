return {

    "akinsho/bufferline.nvim",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        vim.opt.termguicolors = true
        local bufferline = require("bufferline")
        bufferline.setup({
            options = {
                buffer_close_icon = "",
                mode = "buffers",
                offsets = {
                    {
                        filetype = "neo-tree",
                        text = "Neo Tree",
                        separator = true,
                        -- padding = 1,
                    },
                },
                diagnostics = "nvim_lsp",
                indicator = {
                    icon = "  ", -- this should be omitted if indicator style is not 'icon'
                    style = "icon",
                },
            },
        })
        -- Tabs
        vim.keymap.set("n", "<Tab>", ":BufferLineCycleNext<CR>")
        vim.keymap.set("n", "<s-Tab>", ":BufferLineCyclePrev<CR>")
        vim.keymap.set("n", "<leader>x", ":BufferLineCloseOthers<CR>")
    end,
}
