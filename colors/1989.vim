" Vim color file

set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "1989"

let s:dark_gray     = [236, "#303030"]
let s:mid_gray      = [102, "#878787"]
let s:default_white = [231, "#FFFFFF"]

let s:lavender      = [183, "#dfafff"]
let s:light_purple  = [225, "#ffdfff"]
let s:gray_purple   = [146, "#afafd7"]

let s:pink          = [218, "#ffafdf"]
let s:light_blue    = [159, "#afffff"]
let s:mint          = [158, "#afffd7"]
let s:light_yellow  = [229, "#ffffaf"]

let s:dark_pink     = [197, "#ff005f"]
let s:dark_green    = [29,  "#00875f"]
let s:dark_blue     = [31,  "#0087af"]

let s:none          = ["NONE", ""]

function! <SID>set_hi(name, fg, bg, style)
  execute "hi " . a:name . " ctermfg=" . a:fg[0] . " ctermbg=" . a:bg[0] " cterm=" . a:style
  if a:fg[1] != ""
    execute "hi " . a:name . " guifg=" . a:fg[1]
  endif
  if a:bg[1] != ""
    execute "hi " . a:name . " guibg=" . a:bg[1]
  endif
  execute "hi " . a:name . " gui=" . a:style
endfun

call <SID>set_hi("Normal",           s:default_white, s:dark_gray,     "NONE")
call <SID>set_hi("Cursor",           s:dark_gray,     s:default_white, "NONE")
call <SID>set_hi("Visual",           s:none,          s:mid_gray,      "NONE")
call <SID>set_hi("CursorLine",       s:none,          s:dark_gray,     "NONE")
call <SID>set_hi("LineNr",           s:mid_gray,      s:dark_gray,     "NONE")
call <SID>set_hi("VertSplit",        s:mid_gray,      s:mid_gray,      "NONE")
call <SID>set_hi("MatchParen",       s:pink,          s:none,          "underline")
call <SID>set_hi("StatusLine",       s:default_white, s:mid_gray,      "bold")
call <SID>set_hi("StatusLineNC",     s:default_white, s:mid_gray,      "NONE")
call <SID>set_hi("Pmenu",            s:none,          s:none,          "NONE")
call <SID>set_hi("IncSearch",        s:dark_gray,     s:light_yellow,  "NONE")
call <SID>set_hi("Search",           s:none,          s:none,          "underline")
call <SID>set_hi("Directory",        s:lavender,      s:none,          "NONE")
call <SID>set_hi("Folded",           s:light_yellow,  s:dark_gray,     "NONE")
call <SID>set_hi("TabLineSel",       s:light_purple,  s:dark_gray,     "NONE")

call <SID>set_hi("Define",           s:gray_purple,   s:none,          "NONE")
call <SID>set_hi("DiffAdd",          s:default_white, s:dark_green,    "bold")
call <SID>set_hi("DiffDelete",       s:dark_pink,     s:none,          "NONE")
call <SID>set_hi("DiffText",         s:default_white, s:dark_blue,     "bold")
call <SID>set_hi("ErrorMsg",         s:default_white, s:dark_pink,     "NONE")

call <SID>set_hi("Conditional",      s:pink,          s:none,          "NONE")
call <SID>set_hi("Constant",         s:mint,          s:none,          "NONE")
call <SID>set_hi("Function",         s:light_purple,  s:none,          "NONE")
call <SID>set_hi("Label",            s:light_yellow,  s:none,          "NONE")
call <SID>set_hi("SpellCap",         s:light_blue,    s:none,          "underline")
call <SID>set_hi("String",           s:light_blue,    s:none,          "NONE")
call <SID>set_hi("Title",            s:default_white, s:none,          "bold")
call <SID>set_hi("Todo",             s:light_yellow,  s:dark_gray,     "bold")
call <SID>set_hi("rubyBlock",        s:default_white, s:none,          "NONE")

call <SID>set_hi("SyntasticError",   s:dark_gray,     s:pink,          "NONE")
call <SID>set_hi("SyntasticWarning", s:dark_gray,     s:light_blue,    "NONE")

hi! link CursorColumn CursorLine
hi! link ColorColumn CursorLine
hi! link PmenuSel Visual
hi! link TabLine Normal
hi! link TabLineFill Normal
hi! link DiffChange Normal

hi! link WarningMsg ErrorMsg
hi! link Boolean Directory

hi! link Character Directory
hi! link Comment Define
hi! link Float Directory
hi! link Identifier Function
hi! link Keyword Conditional
hi! link NonText Normal
hi! link Number Constant
hi! link Operator Conditional
hi! link PreProc Conditional
hi! link Special Function
hi! link SpecialKey Normal
hi! link Statement Conditional
hi! link SpellBad MatchParen
hi! link StorageClass Constant
hi! link Tag Conditional
hi! link Type Constant
hi! link Underline Search

hi! link rubyClass Conditional
hi! link rubyFunction Function
hi! link rubyInterpolationDelimiter Pmenu
hi! link rubySymbol Function
hi! link rubyConstant Constant
hi! link rubyStringDelimiter String
hi! link rubyBlockParameter Conditional
hi! link rubyInstanceVariable Conditional
hi! link rubyInclude Conditional
hi! link rubyGlobalVariable Label
hi! link rubyRegexp Label
hi! link rubyRegexpDelimiter Label
hi! link rubyEscape Directory
hi! link rubyControl Directory
hi! link rubyRepeat Directory
hi! link rubyConditional Conditional
hi! link rubyClassVariable Label
hi! link rubyOperator Conditional
hi! link rubyException Constant
hi! link rubyPseudoVariable Constant
hi! link rubyRailsUserClass Constant
hi! link rubyRailsARAssociationMethod Constant
hi! link rubyRailsARMethod Constant
hi! link rubyRailsRenderMethod Constant
hi! link rubyRailsMethod Constant
hi! link rubyArrayDelimiter Conditional
hi! link rubyInterpolation Function
hi! link rubyInterpolationDelimiter Conditional

hi! link erubyDelimiter Pmenu
hi! link erubyRailsMethod Constant

hi! link htmlTag Pmenu
hi! link htmlEndTag Pmenu
hi! link htmlTagName Pmenu
hi! link htmlArg Pmenu
hi! link htmlSpecialChar Directory

hi! link javaScriptFunction Constant
hi! link javaScriptRailsFunction Constant
hi! link javaScriptBraces Pmenu

hi! link yamlKey Conditional
hi! link yamlAnchor Pmenu
hi! link yamlAlias Pmenu
hi! link yamlDocumentHeader Label
hi! link yamlPlainScalar String
hi! link yamlBlockCollectionItemStart Conditional

hi! link cssURL DiffDelete
hi! link cssFunctionName Constant
hi! link cssColor Directory
hi! link cssPseudoClassId Label
hi! link cssClassName Label
hi! link cssValueLength Directory
hi! link cssCommonAttr Constant
hi! link cssBraces Pmenu

hi! link jsThis Conditional
hi! link jsBraces Function
hi! link jsGlobalObjects Constant

hi! link coffeeCurly Directory
hi! link coffeeObjAssign Function

hi! link cjsxAttribProperty Directory

hi! link markdownH1 String
hi! link markdownH2 String
hi! link markdownH3 String
hi! link markdownH4 String
hi! link markdownH5 String
hi! link markdownH6 String
hi! link markdownHeadingDelimiter String
hi! link markdownRule String

" https://github.com/kien/rainbow_parentheses.vim
if !exists("g:rbpt_colorpairs")
  let g:rbpt_colorpairs = [
        \ s:mint, s:light_blue, s:lavender, s:pink,
        \ s:mint, s:light_blue, s:lavender, s:pink,
        \ s:mint, s:light_blue, s:lavender, s:pink,
        \ s:mint, s:light_blue, s:lavender, s:pink,
        \ ]
endif
