return {
    {
        "folke/snacks.nvim",
        ---@type snacks.Config
        opts = {
            explorer = { enabled = true },
            lazygit = { enabled = true },
            terminal = {
                enabled = true,
                win = {
                    position = "float",
                },
            },
            picker = {
                enabled = true,
                hidden = true,
                ignored = true,
                exclude = {
                    ".git",
                },
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
            { "<leader>/", function() Snacks.picker.grep() end, desc = "Grep" },
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

            -- Quickfix
            { "<c-q>", function() Snacks.picker.qflist() end, desc = "Quickfix List" },
            { "[q", ":cprev<CR>", desc = "Prev Quickfix", mode = { "n" } },
            { "]q", ":cnext<CR>", desc = "Next Quickfix", mode = { "n" } },

            -- Diagnostic keymaps
            { "<leader>fd", function() Snacks.picker.diagnostics() end, desc = "Diagnostics" },

            { "gd", function() Snacks.picker.lsp_definitions() end, desc = "Goto Definition" },
            { "gD", function() Snacks.picker.lsp_declarations() end, desc = "Goto Declaration" },
            { "gr", function() Snacks.picker.lsp_references() end, nowait = true, desc = "References" },
            { "gI", function() Snacks.picker.lsp_implementations() end, desc = "Goto Implementation" },
            { "gy", function() Snacks.picker.lsp_type_definitions() end, desc = "Goto Type Definition" },
        },
    },
    -- Shows git signs in editor
    {
        "lewis6991/gitsigns.nvim",
        config = function() require("gitsigns").setup() end,
    },
    {
        "nmac427/guess-indent.nvim",
        config = function() require("guess-indent").setup({}) end,
    },
    -- For highlighting todo, fix and other tags in comments
    {
        "folke/todo-comments.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
        opts = {},
    },
    {
        "nvim-mini/mini.nvim",
        version = "*",
        config = function() require("mini.pairs").setup() end,
    },
    {
        "romgrk/barbar.nvim",
        dependencies = {
            "lewis6991/gitsigns.nvim",
            "nvim-tree/nvim-web-devicons",
        },
        init = function() vim.g.barbar_auto_setup = false end,
        opts = {},
    },
}
