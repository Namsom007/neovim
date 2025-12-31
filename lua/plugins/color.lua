return {
    {
        "folke/tokyonight.nvim",
        priority = 1000,
        config = function()
            require("tokyonight").setup({
                style = "night", -- ตัวเลือก: storm, moon, night, day
                transparent = false, -- ปิดการโปร่งแสง
                terminal_colors = true,
                styles = {
                    comments = { italic = true },
                    keywords = { italic = true },
                    functions = {},
                    variables = {},
                    sidebars = "dark",
                    floats = "dark",
                },
            })
            
            vim.cmd.colorscheme("tokyonight")
            
            -- ถ้าต้องการปิดการโปร่งแสงให้แน่ใจ ให้ตั้งค่า background
            vim.api.nvim_set_hl(0, "Normal", { bg = "#1a1b26" })
            vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#1a1b26" })
            vim.api.nvim_set_hl(0, "NormalNC", { bg = "#1a1b26" })
        end
    },
    {
        "nvim-lualine/lualine.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        opts = { theme = "tokyonight" }
    },
}
