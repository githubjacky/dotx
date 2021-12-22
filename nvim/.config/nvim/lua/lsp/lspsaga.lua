
require 'lspsaga'.init_lsp_saga{
    use_saga_diagnostic_sign = true,
    error_sign = '',
    warn_sign = ' ',
    hint_sign = '',
    infor_sign = '',
    dianostic_header_icon = '',
    code_action_icon = '',

    finder_definition_icon = '',
    finder_reference_icon = '',
    finder_action_keys = {
        open = 'o', vsplit = 'v',split = 's',quit = 'q',scroll_down = '<C-f>', scroll_up = '<C-b>' -- quit can be a table
    },
    code_action_keys = {
        quit = 'q',exec = '<cr>'
    },
    rename_action_keys = {
        quit = 'qq',exec = '<cr>'  -- quit can be a table
    },
    -- "single" "double" "round" "plus"
    border_style = "round",
    definition_preview_icon = ''
}


