return{
    {
        'tpope/vim-fugitive',
    },
    {
        'lewis6991/gitsigns.nvim',
        config=function ()
            require('gitsigns').setup()
            vim.keymap.set('n', '<leader>gh', ':Gitsigns preview_hunk<CR>', {})
            vim.keymap.set('n', '<leader>gt', ':Gitsigns toggle_current_line_blame<CR>', {})
            vim.keymap.set('n', '<leader>dt', ':Gitsigns diffthis<CR>', {})
        end
    }
}