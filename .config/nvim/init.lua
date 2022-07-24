
--                        _           
--  _ __   ___  _____   _(_)_ __ ___  
-- | '_ \ / _ \/ _ \ \ / / | '_ ` _ \ 
-- | | | |  __/ (_) \ V /| | | | | | |
-- |_| |_|\___|\___/ \_/ |_|_| |_| |_|


-- Main Files
require("settings")
require("keys")
require("packer-config")

-- Plugins
require("plugin-config.nvim-autopairs")
require("plugin-config.nvim-comment")
require("plugin-config.dashboard-neo")
require("plugin-config.ranger-vim")
require("plugin-config.lualine-nvim")
require("plugin-config.gitsigns-nvim")
require("plugin-config.minimap-vim")
require("plugin-config.vim-checkbox")

-- LSP
require("lsp-config.language-servers")
require("lsp-config.nvim-cmp")
