-- lualine
require('lualine').setup {
    options = {
        icons_enabled = true,
        theme = 'gruvbox',
        component_separators = { left = '', right = '' },
        section_separators = { left = '', right = '' },
        disabled_filetypes = {
            statusline = {},
            winbar = {},
        },
        ignore_focus = {},
        always_divide_middle = true,
        globalstatus = false,
        refresh = {
            statusline = 1000,
            tabline = 1000,
            winbar = 1000,
        }
    },
    sections = {
        lualine_a = { 'mode' },
        lualine_b = { 'branch', 'diff', 'diagnostics' },
        lualine_c = { 'filename' },
        lualine_x = { 'encoding', 'fileformat', 'filetype' },
        lualine_y = { 'progress' },
        lualine_z = { 'location' }
    },
    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { 'filename' },
        lualine_x = { 'location' },
        lualine_y = {},
        lualine_z = {}
    },
    tabline = {},
    winbar = {},
    inactive_winbar = {},
    extensions = {}
}
-- colorizer lua
require('colorizer').setup()
-- telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fw', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

-- dashboard
local db = require('dashboard')
-- example of db.custom_center for new lua coder,the value of nil mean if you
-- don't need this filed you can not write it
db.custom_header = {
    '',
    '',
    ' ⠀⠀⠀⠀⠀⢰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿ ',
    ' ⠀⠀⠀⠀⢐⡛⣛⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿ ',
    ' ⣶⣾⣷⣿⣿⣶⣶⣤⣌⣙⣛⡻⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿ ',
    ' ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣬⡙⠿⠿⠟⠛⢛⣛⠛⠛⠛⠛⠻⠿⠿⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿ ',
    ' ⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⢛⣉⣩⣵⣶⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣶⣶⣦⣍⣉⣙⡛⠿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟ ',
    ' ⣿⣿⣿⣿⣿⡿⠟⣫⣴⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣤⠉⠛⣿⣿⣿⣿⣿⣿⡟⢠ ',
    ' ⣿⣿⡟⢉⣱⡶⢟⣉⢥⣮⣭⡛⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣮⣙⠿⠿⠿⠛⢡⣿ ',
    ' ⡿⢋⣴⣿⡏⣠⣿⡁⠀⢸⣿⣿⡎⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣤⡀⣰⣿⣿ ',
    ' ⣴⣿⣿⣿⡇⠹⣿⣿⣿⣿⡿⢟⣼⣿⣿⣿⣿⠿⠟⣛⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⡙⣿ ',
    ' ⣿⣿⣿⣿⣿⣷⣬⣭⠭⠵⠶⠿⣟⣛⣭⣷⣶⣴⣿⣟⣻⣦⡝⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢫⣵⣶⠶⢶⣮⣍⢻⣿⣿⣿⣎ ',
    ' ⣿⣿⣿⣿⢻⣭⣴⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⣛⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⣿⣿⣅⠀⢀⣿⣿⡇⢻⣿⣿⣿ ',
    ' ⣿⣿⣿⣿⣮⡃⢀⡀⠀⠀⠀⠀⠉⠛⠿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣮⣍⡻⢿⣿⣿⣿⣿⣿⣧⡹⣿⣿⣿⣿⣿⣿⢇⣾⣿⣿⣿ ',
    ' ⣿⣿⣿⣿⣿⣿⣦⣙⠿⣦⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠉⠛⠿⣿⣿⣿⣿⣷⣬⡻⣿⣿⣿⣿⣷⣮⣭⣉⣉⣩⣴⣿⣿⣿⣿⣿ ',
    ' ⣿⣿⣿⣿⣿⣿⣿⣿⣷⣬⡻⡓⠦⣤⣤⣤⣄⣀⣀⣀⠀⠀⠀⠀⠀⠀⠈⠉⠛⠛⢿⣿⣎⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿ ',
    ' ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡘⠷⣶⣾⣿⣿⡿⠿⠿⠿⢿⣟⣛⣛⣛⣛⣛⣉⣭⣭⣭⣵⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿ ',
    ' ⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⡻⣭⣶⣦⣤⣤⣴⣶⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿ ',
    ' ⣿⣿⣿⣿⣿⣿⣿⠿⢋⣴⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⣫ ',
    ' ⣿⣿⣿⣿⣿⣿⣿⣿⣫⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⢋⣵⣿⣿ ',
    ' ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢏⣴⣿⣿⣿⣿ ',
    ' ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⢡⣿⣿⣿⡿⠿⠿ ',
    '',
    '"a"',
    '',
}

db.custom_header = {
    '                                         ',
    '                                         ',
    '                                         ',
    '                                         ',
    '                                         ',
    '                                         ',
    '                                         ',
    '                                         ',
    '███╗   ██╗██╗   ██╗██╗███╗   ███╗██████╗ ',
    '████╗  ██║██║   ██║██║████╗ ████║██╔══██╗',
    '██╔██╗ ██║██║   ██║██║██╔████╔██║██████╔╝',
    '██║╚██╗██║╚██╗ ██╔╝██║██║╚██╔╝██║██╔═══╝ ',
    '██║ ╚████║ ╚████╔╝ ██║██║ ╚═╝ ██║██║     ',
    '╚═╝  ╚═══╝  ╚═══╝  ╚═╝╚═╝     ╚═╝╚═╝     '
}

db.custom_center = {
    { icon = '📝 ',
        desc = 'Last session',
        shortcut = ' SPC s l',
        action = 'SessionLoad' },
    { icon = '📂 ',
        desc = 'Recently opened files',
        shortcut = 'SPC f h',
        action = 'DashboardFindHistory' },
    { icon = '🗃️ ',
        desc = 'Find file',
        shortcut = 'SPC f f',
        action = 'Telescope find_files find_command=rg,--hidden,--files' },
    { icon = '🔎 ',
        desc = 'Find word',
        shortcut = 'SPC f w',
        action = 'Telescope live_grep' },
}
