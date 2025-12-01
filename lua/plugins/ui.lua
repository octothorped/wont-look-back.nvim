return {
    { -- colorscheme
        "catppuccin/nvim",
        priority = 1100, -- Load before everything else
        config = function()
            ---@diagnostic disable-next-line: missing-fields
            require("catppuccin").setup({
                auto_integrations = true,
                custom_highlights = {
                    SnacksPickerPathHidden = { link = "Normal" },
                },
            })
            vim.cmd.colorscheme("catppuccin-mocha")
        end,
    },
    { --icons
        "nvim-tree/nvim-web-devicons",
        opts = {},
    },
    {
        "folke/snacks.nvim",
        priority = 1000, -- Second in line
        lazy = false,
        ---@type snacks.Config
        opts = {
            dashboard = {
                enabled = true,
                sections = {
                    { section = "header" },
                    { section = "keys", gap = 1, padding = 1 },
                    { icon = " ", title = "Recent Files", section = "recent_files", indent = 2, padding = 1 },
                    { icon = " ", title = "Projects", section = "projects", indent = 2, padding = 1 },
                    { section = "startup" },
                },
            },
            scroll = { enabled = true },
            notifier = { enabled = true },
        },
    },
}
