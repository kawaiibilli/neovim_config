-- return {
--     "folke/tokyonight.nvim",
--     opts = {
--         transparent = true,
--         styles = {
--             sidebars = "transparent",
--             floats = "transparent",
--         },
--     },
-- }
--
-- return { 
--     "catppuccin/nvim",
--     lazy = false,
--     name = "catppuccin", 
--     priority = 1000,
--     config = function()
--         vim.cmd.colorscheme "catppuccin"
--     end
-- }
return {
    "luisiacc/gruvbox-baby",
    lazy = false,
    name = "gruvbox-baby",
    priority = 1000,
    config = function()
        vim.g.gruvbox_baby_function_style = "NONE"
        vim.g.gruvbox_baby_keyword_style = "italic"

        -- Each highlight group must follow the structure:
        -- ColorGroup = {fg = "foreground color", bg = "background_color", style = "some_style(:h attr-list)"}
        local colors = require("gruvbox-baby.colors").config()
        -- vim.g.gruvbox_baby_highlights = {Normal = {fg = colors.orange}}
        -- See also :h highlight-guifg
        -- Example:
        -- vim.g.gruvbox_baby_highlights = {Normal = {fg = "#123123", bg = "NONE", style="underline"}}
        -- Enable telescope theme
        vim.g.gruvbox_baby_telescope_theme = 1

        -- Enable background_color type
        vim.g.gruvbox_baby_background_color = "medium"
        vim.g.gruvbox_baby_transparent_mode = 1
        -- Load the colorscheme
        vim.cmd[[colorscheme gruvbox-baby]]
    end
}
