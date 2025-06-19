return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        lazy = false,
        branch = 'master',
        config = function()
            local configs = require("nvim-treesitter.configs")
            configs.setup({
                highlight = {
                    enable = true,
                },
                indent = { enable = true },
                autotage = { enable = true },
                -- A list of parser names, or "all" (the listed parsers MUST always be installed)
                ensure_installed = {
                    "c",
                    "cpp",
                    "bash",
                    "go",
                    "lua",
                    "tsx",
                    "javascript",
                    "typescript",
                    "vim",
                    "vimdoc",
                    "query",
                    "markdown",
                    "markdown_inline"
                },
                -- List of parsers to ignore installing (for all)
                ignore_install = {
                    "sql"
                },
                -- Automatically install missing parsers when entering buffer
                -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
                auto_install = false,
            })
        end
    }
}
