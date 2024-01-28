local opt = vim.opt
local g = vim.g

------ options ------
local options = {
  showmode = true,
  rnu = true,
  numberwidth = 4,
  swapfile = false,
  scrolloff = 15,
}

for key, value in pairs(options) do
  opt[key] = value
end

-- Disabe h,l,arrows go to pre/next line
opt.whichwrap = opt.whichwrap - "<>[]hl"

-- Enable show intro, mode, abbr
opt.shortmess = opt.shortmess - "I"
opt.shortmess = opt.shortmess - "F"
opt.shortmess:append "a"

-- Neovide config
if g.neovide then
  opt.guifont="CaskaydiaCove Nerd Font:h11"
  g.neovide_refresh_rate = 165
  g.neovide_cursor_vfx_mode = "pixiedust"
end

------ autocmds ------
local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
autocmd("VimResized", {
  pattern = "*",
  command = "tabdo wincmd =",
})

-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})
