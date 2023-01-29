-- Theme configuration

require("tokyonight").setup({
  transparent = true,
})

vim.cmd [[ colorscheme tokyonight-night ]]

vim.cmd [[ 
  highlight CursorLine guibg=NONE ctermbg=NONE
  highlight CursorLineNr gui=bold cterm=bold

  highlight Normal guifg=#D6E5EE
  highlight NonText guifg=#D6E5EE
]]

require('lualine').setup {
  options = {
    theme = 'tokyonight'
  }
}

-- Treesitter

local status, ts = pcall(require, "nvim-treesitter.configs")
if (not status) then return end

ts.setup {
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = true,
    disable = {},
  },
  ensure_installed = {
    "tsx",
    "toml",
    "fish",
    "php",
    "json",
    "yaml",
    "css",
    "html",
    "lua"
  },
  autotag = {
    enable = true,
  },
}

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.tsx.filetype_to_parsername = { "javascript", "typescript.tsx" }
