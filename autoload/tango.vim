" [tango.vim](https://github.com/leperdu/tango.vim/)
" tango#GetColors

let s:overrides = get(g:, "tango_color_overrides", {})

let s:colors = {
      \ "red": get(s:overrides, "red", { "gui": "#EF2929", "cterm": "196", "cterm16": "1" }),
      \ "dark_red": get(s:overrides, "dark_red", { "gui": "#CC0000", "cterm": "160", "cterm16": "1" }),
      \ "green": get(s:overrides, "green", { "gui": "#4E9A06", "cterm": "64", "cterm16": "2" }),
      \ "light_green": get(s:overrides, "light_green", { "gui": "#8AE234", "cterm": "113", "cterm16": "10" }),
      \ "yellow": get(s:overrides, "yellow", { "gui": "#FCE94F", "cterm": "221", "cterm16": "11" }),
      \ "dark_yellow": get(s:overrides, "dark_yellow", { "gui": "#C4A000", "cterm": "178", "cterm16": "3" }),
      \ "blue": get(s:overrides, "blue", { "gui": "#729FCF", "cterm": "74", "cterm16": "4" }),
      \ "purple": get(s:overrides, "purple", { "gui": "#AD7FA8" , "cterm": "139", "cterm16": "13"}),
      \ "cyan": get(s:overrides, "cyan", { "gui": "#06989A", "cterm": "30", "cterm16": "6" }),
      \ "white": get(s:overrides, "white", { "gui": "#D3D7CF", "cterm": "188", "cterm16": "7" }),
      \ "black": get(s:overrides, "black", { "gui": "#2E3436", "cterm": "0", "cterm16": "0" }),
      \ "visual_black": get(s:overrides, "visual_black", { "gui": "NONE", "cterm": "NONE", "cterm16": "0" }),
      \ "comment_grey": get(s:overrides, "comment_grey", { "gui": "#888a85", "cterm": "102", "cterm16": "8" }),
      \ "cursor_grey": get(s:overrides, "cursor_grey", { "gui": "#555753", "cterm": "59", "cterm16": "15" }),
      \ "gutter_fg": get(s:overrides, "gutter_fg", { "gui": "#babdb6", "cterm": "145", "cterm16": "8" }),
      \ "visual_grey": get(s:overrides, "visual_grey", { "gui": "#555753", "cterm": "59", "cterm16": "15" }),
      \ "menu_grey": get(s:overrides, "menu_grey", { "gui": "#888a85", "cterm": "102", "cterm16": "0" }),
      \ "special_brown": get(s:overrides, "special_brown", { "gui": "#8f5902", "cterm": "94", "cterm16": "15" }),
      \ "vertsplit": get(s:overrides, "vertsplit", { "gui": "#d3d7cf", "cterm": "188", "cterm16": "15" }),
      \}

function! tango#GetColors()
  return s:colors
endfunction
