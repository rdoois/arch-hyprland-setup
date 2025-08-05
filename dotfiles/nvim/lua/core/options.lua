local options = {
	autoindent = true,
	backup = false,
	clipboard = "unnamedplus",
	cmdheight = 2,
	colorcolumn = "100",
	completeopt = { "menuone", "noselect" },
	conceallevel = 0,
	cursorline = true,
	expandtab = true,
	fileencoding = "utf-8",
	guicursor = "",
	hlsearch = false,
	ignorecase = true,
	incsearch = true,
	mouse = "a",
	number = true,
	numberwidth = 4,
	pumheight = 10,
	relativenumber = true,
	scrolloff = 5,
	shiftwidth = 4,
	showmode = false,
	showtabline = 2,
	sidescrolloff = 5,
	signcolumn = "yes",
	smartcase = true,
	smartindent = true,
	softtabstop = 4,
	splitbelow = true,
	splitright = true,
	swapfile = false,
	tabstop = 4,
	termguicolors = true,
	timeoutlen = 500,
	undodir = os.getenv("HOME") .. "/.vim/undodir",
	undofile = true,
	updatetime = 50,
	wrap = false,
	writebackup = false,
}

for k, v in pairs(options) do
	vim.opt[k] = v
end

vim.opt.shortmess:append("c") -- Don't show completion messages
vim.opt.isfname:append("@-@") -- Allow '@' in file names
vim.opt.iskeyword:append("-") -- Treat '-' as part of a word
