require("carlesfito.remap")
require("carlesfito.settings")
require("carlesfito.custom_filetypes")

require("nvim-web-devicons").setup()
require("nvim-web-devicons").get_icons()
require("oil").setup()

require("carlesfito.plugins.nvim-cmp")
require("carlesfito.plugins.catppuccin")

vim.cmd[[
    highlight Normal guibg=none
    highlight NonText guibg=none
    highlight Normal ctermbg=none
    highlight NonText guibg=none
]]
