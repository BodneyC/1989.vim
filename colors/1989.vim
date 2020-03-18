" Vim color file

set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "1989"
let g:bg_1989 = "#303030"
let g:off_1989 = "#383838"

let s:dark_gray     = [236, g:bg_1989]
let s:off_gray      = [240, g:off_1989]
let s:mid_gray      = [245, "#585858"]
let s:light_gray    = [102, "#878787"]
let s:off_white     = [231, "#fdf8fd"]
let s:default_white = [231, "#FFFFFF"]

let s:dark_lavender = [183, "#4f2f3f"]
let s:lavender      = [183, "#dfafff"]
let s:light_purple  = [225, "#ffdfff"]
let s:gray_purple   = [146, "#afafd7"]

let s:orange        = [218, "#ffd6af"]
let s:pink          = [218, "#ffafdf"]
let s:light_blue    = [159, "#afffff"]
let s:greenish      = [159, "#d8fdda"]
let s:mint          = [158, "#afffd7"]
let s:light_yellow  = [229, "#ffffbf"]

let s:dark_pink     = [197, "#ff005f"]
let s:dark_green    = [29,  "#00875f"]
let s:dark_blue     = [31,  "#0087af"]

let s:none          = ["NONE", ""]

function! <SID>set_hi(name, fg, bg, style)
  exec "hi " . a:name . " ctermfg=" . a:fg[0] . " ctermbg=" . a:bg[0] " cterm=" . a:style
  if a:fg[1] != "" | exec "hi " . a:name . " guifg=" . a:fg[1] | endif
  if a:bg[1] != "" | exec "hi " . a:name . " guibg=" . a:bg[1] | endif
  exec "hi " . a:name . " gui=" . a:style
endfun

call <SID>set_hi("DiffDelete",       s:dark_pink,     s:none,          "NONE")
call <SID>set_hi("rubyBlock",        s:default_white, s:none,          "NONE")
call <SID>set_hi("Define",           s:gray_purple,   s:none,          "NONE")
call <SID>set_hi("Comment",          s:gray_purple,   s:none,          "italic")
call <SID>set_hi("Function",         s:greenish,      s:none,          "NONE")
call <SID>set_hi("Directory",        s:lavender,      s:none,          "NONE")
call <SID>set_hi("String",           s:light_blue,    s:none,          "NONE")
call <SID>set_hi("PreProc",          s:light_purple,  s:none,          "NONE")
call <SID>set_hi("Label",            s:light_yellow,  s:none,          "NONE")
call <SID>set_hi("Number",           s:mint,          s:none,          "NONE")
call <SID>set_hi("Type",             s:orange,        s:none,          "NONE")
call <SID>set_hi("Conditional",      s:pink,          s:none,          "NONE")
call <SID>set_hi("Title",            s:default_white, s:none,          "bold")
call <SID>set_hi("CocBold",          s:none,          s:none,          "bold")
call <SID>set_hi("Search",           s:none,          s:none,          "underline")
call <SID>set_hi("SpellCap",         s:light_blue,    s:none,          "underline")
call <SID>set_hi("Normal",           s:default_white, s:dark_gray,     "NONE")
call <SID>set_hi("NormalFloat",      s:default_white, s:off_gray,      "NONE")
call <SID>set_hi("EndOfBuffer",      s:dark_gray,     s:dark_gray,     "NONE")
call <SID>set_hi("Cursor",           s:dark_gray,     s:default_white, "NONE")
call <SID>set_hi("Visual",           s:none,          s:light_gray,    "NONE")
call <SID>set_hi("CursorLine",       s:none,          s:off_gray,      "NONE")
call <SID>set_hi("LineNr",           s:light_gray,    s:dark_gray,     "NONE")
call <SID>set_hi("VertSplit",        s:light_gray,    s:light_gray,    "NONE")
call <SID>set_hi("MatchParen",       s:none,          s:dark_lavender, "NONE")
call <SID>set_hi("SpellBad",         s:none,          s:dark_lavender, "italic,underline")
call <SID>set_hi("StatusLine",       s:default_white, s:light_gray,    "bold")
call <SID>set_hi("StatusLineNC",     s:default_white, s:light_gray,    "NONE")
call <SID>set_hi("Pmenu",            s:dark_gray,     s:light_purple,  "NONE")
call <SID>set_hi("PmenuSel",         s:dark_gray,     s:lavender,      "NONE")
call <SID>set_hi("CocFloating",      s:default_white, s:mid_gray,      "NONE")
call <SID>set_hi("IncSearch",        s:dark_gray,     s:light_yellow,  "NONE")
call <SID>set_hi("Folded",           s:light_yellow,  s:dark_gray,     "NONE")
call <SID>set_hi("TabLineSel",       s:light_purple,  s:dark_gray,     "NONE")
call <SID>set_hi("DiffAdd",          s:default_white, s:dark_green,    "bold")
call <SID>set_hi("DiffText",         s:default_white, s:dark_blue,     "bold")
call <SID>set_hi("ErrorMsg",         s:default_white, s:dark_pink,     "NONE")
call <SID>set_hi("Todo",             s:light_yellow,  s:dark_gray,     "bold")
call <SID>set_hi("SyntasticError",   s:dark_gray,     s:pink,          "NONE")
call <SID>set_hi("SyntasticWarning", s:dark_gray,     s:light_blue,    "NONE")
call <SID>set_hi("SignColumn",       s:none,          s:dark_gray,     "NONE")

hi! link GitGutterAdd Function
hi! link GitGutterChange Type
hi! link GitGutterChangeDelete Conditional
hi! link GitGutterDelete Conditional
hi! link CocErrorSign SignColumn
hi! link CocWarningSign SignColumn

hi! link CocGitAddedSign GitGutterAdd
hi! link CocGitChangedSign GitGutterChange
hi! link CocGitChangeRemovedSign GitGutterChangeDelete
hi! link CocGitRemovedSign GitGutterDelete
hi! link CocWarningHighlight CocBold
hi! link CocErrorHighlight CocBold
hi! link CocInfoHighlight CocBold
hi! link CocHintHighlight CocBold
hi! link CocWarningFloat CocFloating
hi! link CocErrorFloat CocFloating
hi! link CocHighlightText MatchParen

hi! link Constant Conditional
hi! link CursorColumn CursorLine
hi! link ColorColumn CursorLine
hi! link TabLine Normal
hi! link TabLineFill Normal
hi! link DiffChange Normal

hi! link WarningMsg ErrorMsg
hi! link Boolean Directory

hi! link Character Directory
hi! link Float Directory
hi! link Keyword Conditional
hi! link NonText Normal
hi! link Operator Conditional
hi! link Special Function
hi! link SpecialKey Normal
hi! link Statement Conditional
hi! link StorageClass Number
hi! link Tag Conditional
hi! link Identifier Label
hi! link Underline Search

" hi! link rubyClass Conditional
" hi! link rubyFunction Function
" hi! link rubyInterpolationDelimiter PreProc
" hi! link rubySymbol Function
" hi! link rubyNumber Number
" hi! link rubyStringDelimiter String
" hi! link rubyBlockParameter Conditional
" hi! link rubyInstanceVariable Conditional
" hi! link rubyInclude Conditional
" hi! link rubyGlobalVariable Label
" hi! link rubyRegexp Label
" hi! link rubyRegexpDelimiter Label
" hi! link rubyEscape Directory
" hi! link rubyControl Directory
" hi! link rubyRepeat Directory
" hi! link rubyConditional Conditional
" hi! link rubyClassVariable Label
" hi! link rubyOperator Conditional
" hi! link rubyException Number
" hi! link rubyPseudoVariable Number
" hi! link rubyRailsUserClass Number
" hi! link rubyRailsARAssociationMethod Number
" hi! link rubyRailsARMethod Number
" hi! link rubyRailsRenderMethod Number
" hi! link rubyRailsMethod Number
" hi! link rubyArrayDelimiter Conditional
" hi! link rubyInterpolation Function
" hi! link rubyInterpolationDelimiter Conditional

" hi! link erubyDelimiter PreProc
" hi! link erubyRailsMethod Number

hi! link htmlH1 Identifier
hi! link htmlH2 Identifier
hi! link htmlH3 Identifier
hi! link htmlH4 Identifier
hi! link htmlH5 Identifier
hi! link htmlH6 Identifier
hi! link htmlTag PreProc
hi! link htmlEndTag PreProc
hi! link htmlTagName PreProc
hi! link htmlArg PreProc
hi! link htmlSpecialChar Directory

hi! link mkdHeading String
hi! link mkdListItem String

hi! link javaScriptFunction Number
hi! link javaScriptRailsFunction Number
hi! link javaScriptBraces PreProc

hi! link yamlKey Conditional
hi! link yamlAnchor PreProc
hi! link yamlAlias PreProc
hi! link yamlDocumentHeader Label
hi! link yamlPlainScalar String
hi! link yamlBlockCollectionItemStart Conditional

hi! link cssURL DiffDelete
hi! link cssFunctionName Number
hi! link cssColor Directory
hi! link cssPseudoClassId Label
hi! link cssClassName Label
hi! link cssValueLength Directory
hi! link cssCommonAttr Number
hi! link cssBraces PreProc

hi! link jsThis Conditional
hi! link jsBraces Function
hi! link jsGlobalObjects Number

" hi! link coffeeCurly Directory
" hi! link coffeeObjAssign Function

" hi! link cjsxAttribProperty Directory

" https://github.com/kien/rainbow_parentheses.vim
if ! exists("g:rbpt_colorpairs")
  let g:rbpt_colorpairs = [
        \ s:mint, s:light_blue, s:lavender, s:pink,
        \ s:mint, s:light_blue, s:lavender, s:pink,
        \ s:mint, s:light_blue, s:lavender, s:pink,
        \ s:mint, s:light_blue, s:lavender, s:pink,
        \ ]
endif
