require("keymap.helpers")
local bind = require("keymap.bind")
local map_cr = bind.map_cr
-- local map_cu = bind.map_cu
-- local map_cmd = bind.map_cmd
-- local map_callback = bind.map_callback

local plug_map = {
	-- Package manager: lazy.nvim
	["n|<leader>ph"] = map_cr("Lazy"):with_silent():with_noremap():with_nowait():with_desc("package: Show"),
	["n|<leader>ps"] = map_cr("Lazy sync"):with_silent():with_noremap():with_nowait():with_desc("package: Sync"),
	["n|<leader>pu"] = map_cr("Lazy update"):with_silent():with_noremap():with_nowait():with_desc("package: Update"),
	["n|<leader>pi"] = map_cr("Lazy install"):with_silent():with_noremap():with_nowait():with_desc("package: Install"),
	["n|<leader>pl"] = map_cr("Lazy log"):with_silent():with_noremap():with_nowait():with_desc("package: Log"),
	["n|<leader>pc"] = map_cr("Lazy check"):with_silent():with_noremap():with_nowait():with_desc("package: Check"),
	["n|<leader>pd"] = map_cr("Lazy debug"):with_silent():with_noremap():with_nowait():with_desc("package: Debug"),
	["n|<leader>pp"] = map_cr("Lazy profile"):with_silent():with_noremap():with_nowait():with_desc("package: Profile"),
	["n|<leader>pr"] = map_cr("Lazy restore"):with_silent():with_noremap():with_nowait():with_desc("package: Restore"),
	["n|<leader>px"] = map_cr("Lazy clean"):with_silent():with_noremap():with_nowait():with_desc("package: Clean"),
}

function mapCompileRun()
	vim.api.nvim_set_keymap("n", "r", ":lua compileRun()<CR>a", { noremap = false, silent = false })
	vim.api.nvim_set_keymap("n", "<leader>r", ":lua compileRun()<CR>", { noremap = false, silent = false })
end

function compileRun()
	vim.api.nvim_command("set splitbelow")
	vim.api.nvim_command(":sp")
	local filetype = vim.bo.filetype
	if filetype == "python" then
		print("this is python")
		vim.api.nvim_command(":w | :term python3 %")
	elseif filetype == "go" then
		print("this is go")
		vim.api.nvim_command(":w | :term go run %")
	elseif filetype == "lua" then
		print("this is lua")
	elseif filetype == "javascript" then
		print("this is js")
		vim.api.nvim_command(":w | :term node --trace-warnings %")
	elseif filetype == "sh" then
		print("this is sh")
		vim.api.nvim_command(":w | :term bash %")
	elseif filetype == "html" then
		print("this is html")
		vim.api.nvim_command(":w | :term firefox %")
	elseif filetype == "java" then
		print("this is html")
		vim.api.nvim_command(":w | :term javac % | java %")
	else
		return "nothing"
	end
end

mapCompileRun()
bind.nvim_load_mapping(plug_map)

-- Plugin keymaps
require("keymap.completion")
require("keymap.editor")
require("keymap.lang")
require("keymap.tool")
require("keymap.ui")
