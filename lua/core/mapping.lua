local bind = require("keymap.bind")
local map_cr = bind.map_cr
local map_cu = bind.map_cu
local map_cmd = bind.map_cmd

-- default map
local def_map = {
	-- Vim map
	["n|<C-x>k"] = map_cr("bdelete"):with_noremap():with_silent(),
	["n|<C-s>"] = map_cu("write"):with_noremap(),
	["n|Y"] = map_cmd("y$"),
	["n|D"] = map_cmd("d$"),
    ["n|P"] = map_cmd('"+p'),
    ["n|do"] = map_cmd('ddO'),
	["n|n"] = map_cmd("nzzzv"):with_noremap(),
	["n|N"] = map_cmd("Nzzzv"):with_noremap(),
	-- ["n|J"] = map_cmd("mzJ`z"):with_noremap(),
    ["n|J"] = map_cmd('5j'):with_noremap(),
    ["n|K"] = map_cmd('5k'):with_noremap(),
    ["n|<C-k>"] = map_cmd('5<C-y>'):with_noremap(),
    ["n|<C-j>"] = map_cmd('5<C-e>'):with_noremap(),
    ["n|H"] = map_cmd('0'):with_noremap(),
    ["n|L"] = map_cmd('$'):with_noremap(),
    ["n|U"] = map_cmd('<C-r>'):with_noremap(), --redo
    ["n|E"] = map_cmd('5e'):with_noremap(),
    ["n|w"] = map_cmd('b'):with_noremap(),
    ["n|W"] = map_cmd('5b'):with_noremap(),
    ["n|<leader>h"] = map_cmd('<C-w>h'):with_noremap(),
    ["n|<leader>l"] = map_cmd('<C-w>l'):with_noremap(),
    ["n|<leader>j"] = map_cmd('<C-w>j'):with_noremap(),
    ["n|<leader>k"] = map_cmd('<C-w>k'):with_noremap(),
    ["n|<A-right>"] = map_cr('vertical resize -5'):with_silent(),
    ["n|<A-left>"] = map_cr('vertical resize +5'):with_silent(),
    ["n|<A-up>"] = map_cr('resize -5'):with_silent(),
    ["n|<A-down>"] = map_cr('resize +5'):with_silent(),
	["n|<C-q>"] = map_cmd(":wq<CR>"),
	["n|<A-q>"] = map_cmd(":Bwipeout<CR>"),
	["n|<leader>q"] = map_cmd(":q!<CR>"),
	["n|<leader>os"] = map_cr("setlocal spell! spelllang=en_us"),
    ["n|>"] = map_cmd(">>"),
    ["n|<"] = map_cmd("<<"),
    -- jump back and again
    ["n|-"] = map_cmd("<C-O>"):with_noremap():with_silent(),
    ["n|="] = map_cmd("<C-i>"):with_noremap():with_silent(),
    --set split window
    ["n|sk"] = map_cmd(":set nosplitbelow<CR>:split<CR>:set splitbelow<CR>"),
    ["n|sj"] = map_cmd(":set splitbelow<CR>:split<CR>"),
    ["n|sh"] = map_cmd(":set nosplitright<CR>:vsplit<CR>:set splitright<CR>"),
    ["n|sl"] = map_cmd(":set splitright<CR>:vsplit<CR>"),
    ["n|tk"] = map_cmd(":tabe<CR>"),
    ["n|th"] = map_cmd(":-tabnext<CR>"),
    ["n|tl"] = map_cmd(":+tabnext<CR>"),
    ["n|gmm"] = map_cmd(":e ~/.config/nvim/lua/core/mapping.lua<CR>"),
    ["n|gmi"] = map_cmd(":e ~/.config/nvim/lua/keymap/init.lua<CR>"),
    ["n|<leader>sw"] = map_cr("set wrap"),
	-- Insert
    -- ["i|<A-h>"] = map_cmd('<Left>'):with_noremap(),
    -- ["i|<A-l>"] = map_cmd('<Right>'):with_noremap(),
    ["i|<A-H>"] = map_cmd('<ESC>^i'):with_noremap(),
    ["i|<A-L>"] = map_cmd('<ESC>^A'):with_noremap(),
    ["i|<C-s>"] = map_cmd('<Esc>:w<CR>'),
    ["i|<C-q>"] = map_cmd('<Esc>:wq<CR>'),
	-- command line
	["c|<C-b>"] = map_cmd("<Left>"):with_noremap(),
	["c|<C-f>"] = map_cmd("<Right>"):with_noremap(),
	["c|<C-a>"] = map_cmd("<Home>"):with_noremap(),
	["c|<C-e>"] = map_cmd("<End>"):with_noremap(),
	["c|<C-d>"] = map_cmd("<Del>"):with_noremap(),
	["c|<C-h>"] = map_cmd("<BS>"):with_noremap(),
	["c|<C-t>"] = map_cmd([[<C-R>=expand("%:p:h") . "/" <CR>]]):with_noremap(),
	["c|w!!"] = map_cmd("execute 'silent! write !sudo tee % >/dev/null' <bar> edit!"),
	-- Visual
    -- multi cursor select to insert to press I or A instead of i and a.
    ["v|<C-j>"] = map_cmd(":m '>+1<cr>gv=gv"),
    ["v|<C-k>"] = map_cmd(":m '<-2<cr>gv=gv"),
    ["v|<"] = map_cmd("<gv"),
    ["v|>"] = map_cmd(">gv"),
    ["v|Y"] = map_cmd('"+y'),
    ["v|K"] = map_cmd('5k'),
    ["v|J"] = map_cmd('5j'),
    ["v|H"] = map_cmd('0'),
    ["v|L"] = map_cmd('$'),
    ["v|w"] = map_cmd('b'),
    ["v|<C-l>"] = map_cmd('<ESC>i<C-l>'),
    ["v|<C-h>"] = map_cmd('<ESC>i<C-h>'),
}

bind.nvim_load_mapping(def_map)
