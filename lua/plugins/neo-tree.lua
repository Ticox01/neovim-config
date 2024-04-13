return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
    },
    config = function()
        vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal left<CR>", {})
        require("neo-tree").setup({
            window = {
                mappings = {
                    ["<s-Tab>"] = "prev_source",
                    ["<Tab>"] = "next_source",
                },
            },
            source_selector = {
                winbar = true,
                sources = {
                    { source = "filesystem" },
                    { source = "buffers" },
                    { source = "git_status" },
                    { source = "document_symbols" },
                },
            },
            sources = {
                "filesystem",
                "buffers",
                "git_status",
                "document_symbols",
            },
        })
    end,
}
