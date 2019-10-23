
" Supporting code -------------------------------------------------------------
" Preamble {{{

if exists("syntax_on") 
  syntax reset 
endif

set t_Co=256 
let g:colors_name = "badloris"
" }}}
"
" Palette {{{
let s:blc = {}


" The most basic of all our colors is a slightly tweaked version of the Molokai
" System color.{{{
let s:blc.systemblack   = ['000000', 0]
let s:blc.systemred     = ['ff0000', 1]
let s:blc.systemgreen   = ['00ff00', 2]
let s:blc.systemblue    = ['0000ff', 4]
let s:blc.systemmagenta = ['ffff00', 5]
let s:blc.systemcyan    = ['ff00ff', 6]
let s:blc.systemyellow  = ['00ffff', 3]
let s:blc.systemwhite   = ['ffffff', 7]

let s:blc.systemlightblack   = ['000000', 8]
let s:blc.systemlightred     = ['da0000', 9]
let s:blc.systemlightgreen   = ['00da00', 10]
let s:blc.systemlightblue    = ['0000da', 12]
let s:blc.systemlightmagenta = ['dada00', 13]
let s:blc.systemlightcyan    = ['da00da', 14]
let s:blc.systemlightyellow  = ['00dada', 11]
let s:blc.systemodawhite     = ['dadada', 15]
" }}}

" Pure and simple.{{{
let s:blc.snow = ['e4e4e4', 254]
let s:blc.coal = ['1c1c1c', 234]
" }}}

" pure color {{{
let s:blc.purewhite      = ['ffffff', 232]
let s:blc.pureblack      = ['000000',  16]
" }}}

" Vivid color {{{
let s:blc.vividred            = ['ff0000', 196]
let s:blc.vividorange         = ['ff8700', 208]
let s:blc.vividyellow         = ['ffff00', 226]
let s:blc.vividemerald        = ['87ff00', 118]
let s:blc.vividgreen          = ['00ff00',  46]
let s:blc.vividemeraldgreen   = ['00ff87',  48]
let s:blc.vividcyan           = ['00ffff',  51]
let s:blc.vividmarinblue      = ['0087ff',  31]
let s:blc.vividblue           = ['0000ff',  21]
let s:blc.vividpurple         = ['8700ff',  93]
let s:blc.vividmagenta        = ['ff00ff', 201]
let s:blc.vividpink           = ['ff0087', 198]
" }}}

" Light color {{{
let s:blc.lightred            = ['ff5f5f', 203]
let s:blc.lightorange         = ['ffaf5f', 215]
let s:blc.lightyellow         = ['ffff5f', 227]
let s:blc.lightemerald        = ['afff5f', 155]
let s:blc.lightgreen          = ['5fff5f',  83]
let s:blc.lightemeraldgreen   = ['5fffaf',  85]
let s:blc.lightcyan           = ['5fffff',  87]
let s:blc.lightmarinblue      = ['5fafff',  75]
let s:blc.lightblue           = ['5f5fff',  63]
let s:blc.lightpurple         = ['af5fff', 135]
let s:blc.lightmagenta        = ['ff5fff', 207]
let s:blc.lightpink           = ['ff5faf', 205]
" }}}

" strong color {{{
let s:blc.strongred           = ['d70000', 160]
let s:blc.strongorange        = ['d78700', 172]
let s:blc.strongyellow        = ['d7d700', 184]
let s:blc.strongemerald       = ['87d700', 112]
let s:blc.stronggreen         = ['00d700',  40]
let s:blc.strongemeraldgreen  = ['00d787',  42]
let s:blc.strongcyan          = ['00d7d7',  44]
let s:blc.strongmarinblue     = ['0087d7',  32]
let s:blc.strongblue          = ['0000d7',  21]
let s:blc.strongpurple        = ['8700d7',  92]
let s:blc.strongmagenta       = ['d700d7', 164]
let s:blc.strongpink          = ['d70087', 162]
" }}}

" deep color {{{
let s:blc.deepred             = ['af0000', 124]
let s:blc.deeporange          = ['af5f00', 130]
let s:blc.deepyellow          = ['afaf00', 142]
let s:blc.deepemerald         = ['5faf00',  70]
let s:blc.deepgreen           = ['00af00',  34]
let s:blc.deepemeraldgreen    = ['00af5f',  35]
let s:blc.deepcyan            = ['00afaf',  37]
let s:blc.deepmarinblue       = ['005faf',  25]
let s:blc.deepblue            = ['0000af',  19]
let s:blc.deeppurple          = ['5f00af',  55]
let s:blc.deepmagenta         = ['af00af', 127]
let s:blc.deeppink            = ['af005f', 125]
" }}}
"
" dark color {{{
let s:blc.darkred             = ['870000',  88]
let s:blc.darkorange          = ['875f00',  94]
let s:blc.darkyellow          = ['878700', 100]
let s:blc.darkemerald         = ['5f8700',  64]
let s:blc.darkgreen           = ['008700',  28]
let s:blc.darkemeraldgreen    = ['00875f',  29]
let s:blc.darkcyan            = ['008787',  30]
let s:blc.darkmarinblue       = ['005f87',  24]
let s:blc.darkblue            = ['000087',  21]
let s:blc.darkpurple          = ['5f0087',  54]
let s:blc.darkmagenta         = ['870087',  90]
let s:blc.darkpink            = ['87005f',  89]
" }}}

" deep dark color {{{
let s:blc.deepdarkred             = ['5f0000',  52]
let s:blc.deepdarkyellow          = ['5f5f00',  58]
let s:blc.deepdarkgreen           = ['005f00',  22]
let s:blc.deepdarkcyan            = ['005f5f',  23]
let s:blc.deepdarkblue            = ['00005f',  11]
let s:blc.deepdarkmagenta         = ['5f005f',  53]
" }}}

" }}}
"
" Highlighting Function {{{
function! s:HL(group, fg, ...)
    " Arguments: group, guifg, guibg, gui, guisp

    let histring = 'hi ' . a:group . ' '

    if strlen(a:fg)
        if a:fg == 'fg'
            let histring .= 'guifg=fg ctermfg=fg '
        else
            let c = get(s:blc, a:fg)
            let histring .= 'guifg=#' . c[0] . ' ctermfg=' . c[1] . ' '
        endif
    endif

    if a:0 >= 1 && strlen(a:1)
        if a:1 == 'bg'
            let histring .= 'guibg=bg ctermbg=bg '
        else
            let c = get(s:blc, a:1)
            let histring .= 'guibg=#' . c[0] . ' ctermbg=' . c[1] . ' '
        endif
    endif

    if a:0 >= 2 && strlen(a:2)
        let histring .= 'gui=' . a:2 . ' cterm=' . a:2 . ' '
    endif

    if a:0 >= 3 && strlen(a:3)
        let c = get(s:blc, a:3)
        let histring .= 'guisp=#' . c[0] . ' '
    endif

    execute histring
endfunction
" }}}
"
" Actual colorscheme ----------------------------------------------------------
" General/UI {{{
if &background ==# 'dark'
  call s:HL('Normal', 'snow', 'coal')     
"  call s:HL('Folded', 'mediumgravel', 'bg', 'none') 
"  call s:HL('VertSplit', 'lightgravel', 'bg', 'none')
else 
  call s:HL('Normal', 'coal', 'snow')

endif
" }}} 

" Syntax highlighting {{{
if &background ==# 'dark'
  call s:HL('Comment', 'deepdarkgreen')
"j  call s:HL('Constant','dalespale')
"j  call s:HL('Character','dalespale')
"j
"j  call s:HL('Identifier','coffee')
"j
"j  call s:HL('Statement','taffy') 
"j
"j  call s:HL('PreProc','lime')
"j
  call s:HL('Type','deepred')
"j
"j  call s:HL('Special','lime')
"j
"j  call s:HL('Underlined','lime')
"j
"j  call s:HL('Ignore','lime')
"j
"j  call s:HL('Error','lime')
"j
"j  call s:HL('Todo','coal','dalespale','bold')
else 

endif
" }}} 


