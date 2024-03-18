return {
    {
        "nvim-telescope/telescope-ui-select.nvim",
    },
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.4",
        dependencies = { "nvim-lua/plenary.nvim",
            "sharkdp/fd"
        },
        config = function()
            require("telescope").setup({
                extensions = {
                    ["ui-select"] = {
                        require("telescope.themes").get_dropdown({}),
                    },
                },
            })
            local builtin = require("telescope.builtin")
            vim.keymap.set("n", "<C-f>", builtin.find_files, {})
            vim.keymap.set("n", "<C-g>", builtin.live_grep, {})

            require("telescope").load_extension("ui-select")
        end,
    },
}
