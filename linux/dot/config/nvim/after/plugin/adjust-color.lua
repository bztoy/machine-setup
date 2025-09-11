-- Sets colors to line numbers Above, Current and Below  in this order
local function LineNumberColors()
    vim.api.nvim_set_hl(0, 'LineNrAbove', { fg = '#787276', bold = true })
    vim.api.nvim_set_hl(0, 'LineNr', { fg = 'white', bold = true })
    vim.api.nvim_set_hl(0, 'LineNrBelow', { fg = '#787276', bold = true })
end

return {
    {
        LineNumberColors()
    }
}
