return {
    {
        "sainnhe/gruvbox-material",
        priority = 1000,
        config = function()
            vim.g.gruvbox_material_background = "medium"
            vim.g.gruvbox_material_transparent_background = 1
            
            vim.cmd.colorscheme("gruvbox-material")
            
            -- ตั้งค่า highlight groups ให้โปร่งแสง
            local transparent_groups = {
                "Normal",
                "NormalFloat",
                "NormalNC",        -- เพิ่มสำหรับ window ที่ไม่ focus
                "SignColumn",
                "EndOfBuffer",
                "LineNr",
                "CursorLineNr",
                "Folded",          -- เพิ่มสำหรับ folded text
                "FoldColumn",      -- เพิ่มสำหรับ fold column
            }
            
            for _, group in ipairs(transparent_groups) do
                vim.api.nvim_set_hl(0, group, { bg = "none" })
            end
            
            -- Custom syntax highlighting
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
