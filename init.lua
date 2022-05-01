vim.cmd([[
source ~/.config/nvim/config.vim
source ~/.config/nvim/telescope.lua
source ~/.config/nvim/lualine.lua
source ~/.config/nvim/nerd.lua
source ~/.config/nvim/toggle.lua
source ~/.config/nvim/onedark.lua
colo onedark
command! -nargs=0 Prettier :CocCommand prettier.forceFormatDocument

syntax on
set shortmess+=c
set cmdheight=2
set background=dark
set t_Co=256
set noshowmode
set encoding=utf-8
set background=dark
syntax on
set smartindent
set autoindent
set mouse=a 
set number
set cursorline
set laststatus=2
set termguicolors
set nobackup
set nowritebackup
set updatetime=300
set timeoutlen=400
set hidden

]])

vim.g.dashboard_default_executive ='telescope'
vim.g.closetag_filenames = '*.html,*.xhtml,*.phtml,*.jsx,*.js*,*.tsx,*.ts'
vim.g.closetag_xhtml_filenames = '*.xhtml,*.jsx,*.js*,*.tsx,*.ts'
vim.g.closetag_filetypes = 'html,xhtml,phtml,jsx,js,tsx,ts'
vim.g.closetag_xhtml_filetypes = 'xhtml,jsx,js,tsx,ts'
vim.g.closetag_emptyTags_caseSensitive = true

vim.g.closetag_regions = {
    [['typescript.tsx': 'jsxRegion,tsxRegion']],
    [['javascript.jsx': 'jsxRegion']],
    [[ 'typescriptreact': 'jsxRegion,tsxRegion']],
    [[ 'javascriptreact': 'jsxRegion']],
}

vim.g.closetag_shortcut = '>'
vim.g.closetag_close_shortcut = '<leader>>'

vim.g.dashboard_custom_header = {
   [[        ▄▄▄▄▄███████████████████▄▄▄▄▄     ]],
   [[      ▄██████████▀▀▀▀▀▀▀▀▀▀██████▀████▄   ]],
   [[     █▀████████▄             ▀▀████ ▀██▄  ]],
   [[    █▄▄██████████████████▄▄▄         ▄██▀ ]],
   [[     ▀█████████████████████████▄    ▄██▀  ]],
   [[       ▀████▀▀▀▀▀▀▀▀▀▀▀▀█████████▄▄██▀    ]],
   [[         ▀███▄              ▀██████▀      ]],
   [[           ▀██████▄        ▄████▀         ]],
   [[              ▀█████▄▄▄▄▄▄▄███▀           ]],
   [[                ▀████▀▀▀████▀             ]],
   [[                  ▀███▄███▀               ]],
   [[                     ▀█▀                  ]],
}

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map('n', 'w', ':write<CR>', opts)
map('n','<C-r>', ':ToggleTerm<cr>',opts)
map('n', '/', ':Commentary<CR>',opts)
map('n','q', ':quit<CR>', opts)
map('n','<C-z>', ':NvimTreeToggle<CR>',opts)
map('n','<C-x>',':telescope find_files<CR>',opts)
map('n','s',':source%<CR>',opts)
map('n','t',':TmuxNavigateLeft<CR>',opts)
map('n','i',':TmuxNavigateDown<cr>',opts)
map('n','q1',':quit!<CR>',opts)
map('n','w1',':quit!<CR>',opts)

