require("while.core")
require("while.lazy")

vim.cmd("colorscheme rose-pine-main")
vim.cmd([[
  highlight NormalFloat guibg=#1e222a guifg=#c8d0e0 " Opaque for floating windows
  highlight Pmenu guibg=#1e222a guifg=#c8d0e0       " Opaque completion menu
  highlight PmenuSel guibg=#3e4452 guifg=#ffffff    " Selected item in completion menu
  highlight StatusLine guibg=#1e222a guifg=#c8d0e0  " Opaque status line
  highlight VertSplit guibg=NONE guifg=#3e4452      " Transparent vertical splits
  highlight LineNr guibg=NONE guifg=#5c6370         " Line numbers
  highlight CursorLineNr guibg=NONE guifg=#ffffff   " Cursor line number
  highlight SignColumn guibg=NONE                  " Transparent sign column
]])
