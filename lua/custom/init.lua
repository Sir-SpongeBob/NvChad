local opt = vim.opt
local g = vim.g

------ options ------
local options = {
  showmode = true,
  rnu = true,
  numberwidth = 4,
  swapfile = false,
  scrolloff = 15,
  linebreak = true,
}

for key, value in pairs(options) do
  opt[key] = value
end

-- Disabe h,l,arrows go to pre/next line
opt.whichwrap = opt.whichwrap - "<>[]hl"

-- Enable show intro, mode, abbr
opt.shortmess = opt.shortmess - "I"
opt.shortmess = opt.shortmess - "F"

-- Neovide config
if g.neovide then
  opt.guifont="CaskaydiaCove Nerd Font:h11"
  g.neovide_refresh_rate = 180
  g.neovide_remember_window_size = true
  g.neovide_scroll_animation_length = 0
  g.neovide_cursor_animation_length = 0
  g.neovide_cursor_trail_size = 0
  g.neovide_cursor_animate_in_insert_mode = false
  g.neovide_cursor_animate_command_line = false
  g.neovide_cursor_vfx_mode = ""
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
