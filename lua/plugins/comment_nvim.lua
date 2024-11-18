return {
    'numToStr/Comment.nvim',
    opts = {
    --     -- add any options here
    },
    lazy = false,
    config = function()
        require('Comment').setup({
            padding = true,
            opleader = {
                ---Line-comment keymap
                line = 'lc',
                ---Block-comment keymap
                block = 'bc',
            },
        })
    end,
}
