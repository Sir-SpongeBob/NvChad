require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'auto',
    component_separators = '|',
    section_separators = '',
  },

  sections = {
    lualine_c = {
      {
        'filename',
        newfile_status = true,
        path = 4,
      }
    }
  },
}
