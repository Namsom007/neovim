return {
    {
        "sainnhe/gruvbox-material",
        priority = 1000,
        config = function()
            vim.g.gruvbox_material_background = "medium"
            vim.cmd.colorscheme("gruvbox-material")


            vim.api.nvim_set_hl(0, "@function", { fg = "#FFD700", bold = true })
            vim.api.nvim_set_hl(0, "@keyword",  { fg = "#FF5733", italic = true })
            vim.api.nvim_set_hl(0, "@string",   { fg = "#98C379" })
            vim.api.nvim_set_hl(0, "@comment",  { fg = "#808080", italic = true })
        end
    },
    {
        "nvim-lualine/lualine.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        opts = { theme = "gruvbox-material" }
    },
}

