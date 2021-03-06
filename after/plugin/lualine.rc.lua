local status, lualine = pcall(require, "lualine")
if (not status) then return end

lualine.setup {
  options = {
    icons_enabled = true,
    theme = 'codedark',
    always_divide_middle = false
  },
  sections = {
    lualine_c = {{
        'filename',
        file_status = true,
        path = 0
    }},
    lualine_x = {{
        'filetype',
        colored = true,
        icon_only = false
    }},
    lualine_y = { 'progress' }
  },
  inactive_sections = {
    lualine_c = {{
        'filename',
        file_status = true,
        path = 1
    }}
  },
  tabline = {
    lualine_a = { 'buffers' }
  },
  extensions = { 'fugitive' }
}
