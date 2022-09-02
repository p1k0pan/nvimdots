local bind = require("keymap.bind")
local map_cr = bind.map_cr
local map_cu = bind.map_cu
local map_cmd = bind.map_cmd
require("keymap.config")

local plug_map = {
    --whichkey ( press ',' first to start manually and this key to view all bind)
    ["n|<leader><cr>"] = map_cr("WhichKey"):with_noremap():with_silent(),
	-- Bufferline
	["n|gb"] = map_cr("BufferLinePick"):with_noremap():with_silent(),
	["n|<A-j>"] = map_cr("BufferLineCycleNext"):with_noremap():with_silent(),
	["n|<A-k>"] = map_cr("BufferLineCyclePrev"):with_noremap():with_silent(),
	["n|<A-S-j>"] = map_cr("BufferLineMoveNext"):with_noremap():with_silent(),
	["n|<A-S-k>"] = map_cr("BufferLineMovePrev"):with_noremap():with_silent(),
	["n|<leader>be"] = map_cr("BufferLineSortByExtension"):with_noremap(),
	["n|<leader>bd"] = map_cr("BufferLineSortByDirectory"):with_noremap(),
	["n|<A-1>"] = map_cr("BufferLineGoToBuffer 1"):with_noremap():with_silent(),
	["n|<A-2>"] = map_cr("BufferLineGoToBuffer 2"):with_noremap():with_silent(),
	["n|<A-3>"] = map_cr("BufferLineGoToBuffer 3"):with_noremap():with_silent(),
	["n|<A-4>"] = map_cr("BufferLineGoToBuffer 4"):with_noremap():with_silent(),
	["n|<A-5>"] = map_cr("BufferLineGoToBuffer 5"):with_noremap():with_silent(),
	["n|<A-6>"] = map_cr("BufferLineGoToBuffer 6"):with_noremap():with_silent(),
	["n|<A-7>"] = map_cr("BufferLineGoToBuffer 7"):with_noremap():with_silent(),
	["n|<A-8>"] = map_cr("BufferLineGoToBuffer 8"):with_noremap():with_silent(),
	["n|<A-9>"] = map_cr("BufferLineGoToBuffer 9"):with_noremap():with_silent(),
	-- Packer
	["n|<leader>ps"] = map_cr("PackerSync"):with_silent():with_noremap():with_nowait(),
	["n|<leader>pu"] = map_cr("PackerUpdate"):with_silent():with_noremap():with_nowait(),
	["n|<leader>pi"] = map_cr("PackerInstall"):with_silent():with_noremap():with_nowait(),
	["n|<leader>pc"] = map_cr("PackerClean"):with_silent():with_noremap():with_nowait(),
	-- Lsp map work when insertenter and lsp start
	["n|<leader>li"] = map_cr("LspInfo"):with_noremap():with_silent():with_nowait(),
	["n|<leader>lr"] = map_cr("LspRestart"):with_noremap():with_silent():with_nowait(),
	["n|<A-t>"] = map_cr("LSoutlineToggle"):with_noremap():with_silent(),
	["n|g["] = map_cr("Lspsaga diagnostic_jump_next"):with_noremap():with_silent(),
	["n|g]"] = map_cr("Lspsaga diagnostic_jump_prev"):with_noremap():with_silent(),
	["n|gs"] = map_cr("Lspsaga signature_help"):with_noremap():with_silent(),
	["n|gn"] = map_cr("Lspsaga rename"):with_noremap():with_silent(),
	["n|gh"] = map_cr('Lspsaga lsp_finder'):with_noremap():with_silent(),
	["n|M"] = map_cr("Lspsaga hover_doc"):with_noremap():with_silent(),
	["n|<C-Up>"] = map_cr("lua require('lspsaga.action').smart_scroll_with_saga(-1)"):with_noremap():with_silent(),
	["n|<C-Down>"] = map_cr("lua require('lspsaga.action').smart_scroll_with_saga(1)"):with_noremap():with_silent(),
	["n|<leader>ca"] = map_cr("Lspsaga code_action"):with_noremap():with_silent(),
	["v|<leader>ca"] = map_cu("Lspsaga range_code_action"):with_noremap():with_silent(),
	["n|gd"] = map_cr("Lspsaga preview_definition"):with_noremap():with_silent(),
	-- ["n|gd"] = map_cr(":lua vim.lsp.buf.definition()"):with_noremap():with_silent(),
    -- ["n|gD"] = map_cmd("<cmd>lua vim.lsp.buf.declaration()<CR>"):with_noremap()
        :with_silent(),
    ["n|gi"] = map_cmd("<cmd>lua vim.lsp.buf.implementation()<CR>"):with_noremap()
        :with_silent(),
    ["n|gr"] = map_cmd("<cmd>lua vim.lsp.buf.references()<CR>"):with_noremap()
        :with_silent(),
	-- ["n|<A-d>"] = map_cu('lua require("FTerm").toggle()'):with_noremap():with_silent(),
	-- ["t|<A-d>"] = map_cu([[<C-\><C-n><CMD>lua require("FTerm").toggle()]]):with_noremap():with_silent(),
	-- ["t|<A-S-d>"] = map_cu([[<C-\><C-n><CMD>lua require("FTerm").exit()]]):with_noremap():with_silent(),
    -- Ranger with rnvimr
    ["n|<C-o>"] = map_cr('RnvimrToggle'):with_noremap():with_silent(),
	["n|gD"] = map_cr("lua vim.lsp.buf.definition()"):with_noremap():with_silent(),
	-- ["n|gps"] = map_cr("G push"):with_noremap():with_silent(),
	-- ["n|gpl"] = map_cr("G pull"):with_noremap():with_silent(),
	-- toggleterm
	-- ["t|<Esc><Esc>"] = map_cmd([[<C-\><C-n>]]), -- switch to normal mode in terminal.
	["n|<C-\\>"] = map_cr([[execute v:count . "ToggleTerm direction=horizontal"]]):with_noremap():with_silent(),
	["i|<C-\\>"] = map_cmd("<Esc><Cmd>ToggleTerm direction=horizontal<CR>"):with_noremap():with_silent(),
	["t|<C-\\>"] = map_cmd("<Esc><Cmd>ToggleTerm<CR>"):with_noremap():with_silent(),
	["n|<C-w>t"] = map_cr([[execute v:count . "ToggleTerm direction=vertical"]]):with_noremap():with_silent(),
	["i|<C-w>t"] = map_cmd("<Esc><Cmd>ToggleTerm direction=vertical<CR>"):with_noremap():with_silent(),
	["t|<C-w>t"] = map_cmd("<Esc><Cmd>ToggleTerm<CR>"):with_noremap():with_silent(),
	["n|<F5>"] = map_cr([[execute v:count . "ToggleTerm direction=vertical"]]):with_noremap():with_silent(),
	["i|<F5>"] = map_cmd("<Esc><Cmd>ToggleTerm direction=vertical<CR>"):with_noremap():with_silent(),
	["t|<F5>"] = map_cmd("<Esc><Cmd>ToggleTerm<CR>"):with_noremap():with_silent(),
	["n|<A-d>"] = map_cr([[execute v:count . "ToggleTerm direction=float"]]):with_noremap():with_silent(),
	["i|<A-d>"] = map_cmd("<Esc><Cmd>ToggleTerm direction=float<CR>"):with_noremap():with_silent(),
	["t|<A-d>"] = map_cmd("<Esc><Cmd>ToggleTerm<CR>"):with_noremap():with_silent(),
	["n|<leader>g"] = map_cr("lua toggle_lazygit()"):with_noremap():with_silent(),
	["t|<leader>g"] = map_cmd("<Esc><Cmd>lua toggle_lazygit()<CR>"):with_noremap():with_silent(),
	-- Plugin trouble
	["n|gt"] = map_cr("TroubleToggle"):with_noremap():with_silent(),
	["n|gR"] = map_cr("TroubleToggle lsp_references"):with_noremap():with_silent(),
	["n|<leader>cd"] = map_cr("TroubleToggle document_diagnostics"):with_noremap():with_silent(),
	["n|<leader>cw"] = map_cr("TroubleToggle workspace_diagnostics"):with_noremap():with_silent(),
	["n|<leader>cq"] = map_cr("TroubleToggle quickfix"):with_noremap():with_silent(),
	["n|<leader>cl"] = map_cr("TroubleToggle loclist"):with_noremap():with_silent(),
	-- Plugin nvim-tree
	["n|<C-p>"] = map_cr("NvimTreeToggle"):with_noremap():with_silent(),
	["n|<Leader>nf"] = map_cr("NvimTreeFindFile"):with_noremap():with_silent(),
	["n|<Leader>nr"] = map_cr("NvimTreeRefresh"):with_noremap():with_silent(),
	-- Plugin Undotree
	["n|<Leader>u"] = map_cr("UndotreeToggle"):with_noremap():with_silent(),
	-- Plugin Telescope
	["n|<Leader>fp"] = map_cu("lua require('telescope').extensions.project.project{}"):with_noremap():with_silent(),
	["n|<Leader>fr"] = map_cu("lua require('telescope').extensions.frecency.frecency{}"):with_noremap():with_silent(),
	["n|<Leader>fe"] = map_cu("Telescope oldfiles"):with_noremap():with_silent(),
	["n|<Leader>ff"] = map_cu("Telescope find_files"):with_noremap():with_silent(),
	["n|<Leader>sc"] = map_cu("Telescope colorscheme"):with_noremap():with_silent(),
	["n|<Leader>fn"] = map_cu(":enew"):with_noremap():with_silent(),
	["n|<Leader>fw"] = map_cu("Telescope live_grep"):with_noremap():with_silent(),
	["n|<Leader>fg"] = map_cu("Telescope git_files"):with_noremap():with_silent(),
	["n|<Leader>fz"] = map_cu("Telescope zoxide list"):with_noremap():with_silent(),
	-- Plugin accelerate-jk
	["n|j"] = map_cmd("v:lua.enhance_jk_move('j')"):with_silent():with_expr(),
	["n|k"] = map_cmd("v:lua.enhance_jk_move('k')"):with_silent():with_expr(),
	-- Plugin vim-eft
	["n|f"] = map_cmd("v:lua.enhance_ft_move('f')"):with_expr(),
	["n|F"] = map_cmd("v:lua.enhance_ft_move('F')"):with_expr(),
	["v|f"] = map_cmd("v:lua.enhance_ft_move('f')"):with_expr(),
	["v|F"] = map_cmd("v:lua.enhance_ft_move('F')"):with_expr(),
	-- ["n|t"] = map_cmd("v:lua.enhance_ft_move('t')"):with_expr(),
	-- ["n|T"] = map_cmd("v:lua.enhance_ft_move('T')"):with_expr(),
	-- ["n|;"] = map_cmd("v:lua.enhance_ft_move(';')"):with_expr(),
	-- Plugin Hop
    ["n|<leader>f"] = map_cr("HopWord"),
    ["n|<leader>fl"] = map_cr("HopLine"),
    ["n|<leader>fc"] = map_cr("HopChar1"),
	-- Plugin EasyAlign
	["n|ga"] = map_cmd("v:lua.enhance_align('nga')"):with_expr(),
	["x|ga"] = map_cmd("v:lua.enhance_align('xga')"):with_expr(),
	-- Plugin MarkdownPreview
	["n|<F12>"] = map_cr("MarkdownPreviewToggle"):with_noremap():with_silent(),
	-- Plugin auto_session
	["n|<leader>ss"] = map_cu("SaveSession"):with_noremap():with_silent(),
	["n|<leader>sr"] = map_cu("RestoreSession"):with_noremap():with_silent(),
	["n|<leader>sd"] = map_cu("DeleteSession"):with_noremap():with_silent(),
	-- Plugin SnipRun
	["v|<leader>r"] = map_cr("SnipRun"):with_noremap():with_silent(),
	-- Plugin dap
	["n|<F6>"] = map_cr("lua require('dap').continue()"):with_noremap():with_silent(),
	["n|<leader>dr"] = map_cr("lua require('dap').continue()"):with_noremap():with_silent(),
	["n|<leader>dd"] = map_cr("lua require('dap').terminate() require('dapui').close()"):with_noremap():with_silent(),
	["n|<leader>db"] = map_cr("lua require('dap').toggle_breakpoint()"):with_noremap():with_silent(),
	["n|<leader>dB"] = map_cr("lua require('dap').set_breakpoint(vim.fn.input('Breakpoint condition: '))")
		:with_noremap()
		:with_silent(),
	["n|<leader>dbl"] = map_cr("lua require('dap').list_breakpoints()"):with_noremap():with_silent(),
	["n|<leader>drc"] = map_cr("lua require('dap').run_to_cursor()"):with_noremap():with_silent(),
	["n|<leader>drl"] = map_cr("lua require('dap').run_last()"):with_noremap():with_silent(),
	["n|<F9>"] = map_cr("lua require('dap').step_over()"):with_noremap():with_silent(),
	["n|<leader>dv"] = map_cr("lua require('dap').step_over()"):with_noremap():with_silent(),
	["n|<F10>"] = map_cr("lua require('dap').step_into()"):with_noremap():with_silent(),
	["n|<leader>di"] = map_cr("lua require('dap').step_into()"):with_noremap():with_silent(),
	["n|<F11>"] = map_cr("lua require('dap').step_out()"):with_noremap():with_silent(),
	["n|<leader>do"] = map_cr("lua require('dap').step_out()"):with_noremap():with_silent(),
	["n|<leader>dl"] = map_cr("lua require('dap').repl.open()"):with_noremap():with_silent(),
	["o|m"] = map_cu([[lua require('tsht').nodes()]]):with_silent(),
	["c|Q"] = map_cu([[%SnipRun]]):with_silent(),
	-- Plugin Tabout
	-- ["i|<A-l>"] = map_cmd([[<Plug>(TaboutMulti)]]):with_silent(),
	-- ["i|<A-h>"] = map_cmd([[<Plug>(TaboutBackMulti)]]):with_silent(),
	-- Plugin Diffview
	["n|<leader>D"] = map_cr("DiffviewOpen"):with_silent():with_noremap(),
	["n|<leader><leader>D"] = map_cr("DiffviewClose"):with_silent():with_noremap(),
}

function mapCompileRun()
    vim.api.nvim_set_keymap(
        'n',
        'r',
        ':lua compileRun()<CR>a',
        { noremap = false, silent = false }
    );
    vim.api.nvim_set_keymap(
        'n',
        '<leader>r',
        ':lua compileRun()<CR>',
        { noremap = false, silent = false }
    );
end

function compileRun()
    vim.api.nvim_command('set splitbelow')
    vim.api.nvim_command(':sp')
   local filetype = vim.bo.filetype
    if filetype == 'python' then
        print("this is python")
        vim.api.nvim_command(':w | :term python3 %')
    elseif filetype == 'go' then
        print("this is go")
        vim.api.nvim_command(':w | :term go run %')
    elseif filetype== 'lua' then
        print("this is lua")
    elseif filetype== 'javascript' then
        print("this is js")
        vim.api.nvim_command(':w | :term node --trace-warnings %')
    elseif filetype== 'sh' then
        print("this is sh")
        vim.api.nvim_command(':w | :term bash %')
    elseif filetype== 'html' then
        print("this is html")
        vim.api.nvim_command(':w | :term firefox %')
    elseif filetype== 'java' then
        print("this is html")
        vim.api.nvim_command(':w | :term javac % | java %')
    else
        return "nothing"
    end
    
end

mapCompileRun()
bind.nvim_load_mapping(plug_map)
