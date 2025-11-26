require('lazy').setup({
  -- NOTE: Plugins can be added with a link (or for a github repo: 'owner/repo' link).
  'NMAC427/guess-indent.nvim', -- Detect tabstop and shiftwidth automatically

  -- use the below once all plugins have been inspected
  -- { import = 'plugins' },
  require 'plugins.gitsigns',
  require 'plugins.which-key',
  require 'plugins.telescope',
  require 'plugins.lspconfig',
  require 'plugins.conform',
  require 'plugins.blink-cmp',
  require 'plugins.tokyonight',
  require 'plugins.todo-comments',
  require 'plugins.mini',
  require 'plugins.treesitter',
})

-- vim: ts=2 sts=2 sw=2 et
