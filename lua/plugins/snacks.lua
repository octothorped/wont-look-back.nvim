return {
    {
        "folke/snacks.nvim",
        priority = 1000,
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
            explorer = { enabled = true },
            lazygit = { enabled = true },
            terminal = { enabled = true },
            picker = {
                enabled = true,
                hidden = true,
                sources = {
                    files = {
                        hidden = true,
                    },
                },
                win = {
                    input = {
                        keys = {
                            ["<Esc>"] = { "close", mode = { "n", "i" } },
                        },
                    },
                },
            },
        },
        keys = {
            { "<leader>e", function() Snacks.explorer() end, desc = "File Explorer" },
            { "<c-/>", function() Snacks.terminal() end, desc = "Terminal (Root Dir)", mode = { "n", "t" } },
            { "<leader>gg", function() Snacks.lazygit() end, desc = "Lazygit" },
            { "<leader><space>", function() Snacks.picker.smart() end, desc = "Smart Find Files" },
            { "<leader>,", function() Snacks.picker.buffers() end, desc = "Buffers" },
            { "<leader>/", function() Snacks.picker.grep() end, desc = "Grep" },
            { "<leader>:", function() Snacks.picker.command_history() end, desc = "Command History" },
            { "<leader>fb", function() Snacks.picker.buffers() end, desc = "Buffers" },
            {
                "<leader>fc",
                function() Snacks.picker.files({ cwd = vim.fn.stdpath("config") }) end,
                desc = "Find Config File",
            },
            { "<leader>ff", function() Snacks.picker.files() end, desc = "Find Files" },
            { "<leader>fg", function() Snacks.picker.git_files() end, desc = "Find Git Files" },
            { "<leader>fp", function() Snacks.picker.projects() end, desc = "Projects" },
            { "<leader>fr", function() Snacks.picker.recent() end, desc = "Recent" },
        },
    },
}
