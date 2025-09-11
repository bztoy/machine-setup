-- set transparent bg
local function enable_transparency()
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
end

-- Sets colors to line numbers Above, Current and Below  in this order
local function LineNumberColors()
    vim.api.nvim_set_hl(0, 'LineNrAbove', { fg = '#787276', bold = true })
    vim.api.nvim_set_hl(0, 'LineNr', { fg = 'white', bold = true })
    vim.api.nvim_set_hl(0, 'LineNrBelow', { fg = '#787276', bold = true })
end

return {
    {
        "folke/tokyonight.nvim",
        lazy = false,
        config = function()
            vim.cmd [[colorscheme tokyonight]]
            enable_transparency()
        end
    },
    -- lua line
    {
        "nvim-lualine/lualine.nvim",
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        opts = {
            theme = "tokyonight",
        }

    },

    {
        LineNumberColors()
    }
    --    {
    --	"catppuccin/nvim", name = "catppuccin", priority = 1000,
    --	config = function()
    --	    vim.cmd[[colorscheme catppuccin-frappe]]
    --	end
    --    }
}
