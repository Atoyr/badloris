
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
" Normal text.
let s:blc.glass      = ['000000', 0]
let s:blc.red        = ['ff0000', 1]
let s:blc.green      = ['ff0000', 2]
let s:blc.yellow     = ['ff0002', 3]
let s:blc.blue       = ['ff0002', 4]
let s:blc.purple     = ['ff0002', 5]
let s:blc.lightblue  = ['ff0002', 6]
let s:blc.offwhite   = ['ff0002', 6]
let s:blc.plain      = ['f8f6f2', 15]

" Pure and simple.
let s:blc.snow = ['e4e4e4', 254]
let s:blc.coal = ['1c1c1c', 234]

" All of the Gravel colors are based on a brown from Clouds Midnight.
let s:blc.brightgravel   = ['d9cec3', 252]
let s:blc.lightgravel    = ['998f84', 245]
let s:blc.gravel         = ['857f78', 243]
let s:blc.mediumgravel   = ['666462', 241]
let s:blc.deepgravel     = ['45413b', 238]
let s:blc.deepergravel   = ['35322d', 236]
let s:blc.darkgravel     = ['242321', 235]
let s:blc.blackgravel    = ['1c1b1a', 233]
let s:blc.blackestgravel = ['141413', 232]

let s:blc.dalespale      = ['fade3e', 221]
let s:blc.dirtyblonde    = ['f4cf86', 222]
let s:blc.taffy          = ['ff2c4b', 196]
let s:blc.saltwatertaffy = ['8cffba', 121]
let s:blc.tardis         = ['0a9dff', 39]
let s:blc.orange         = ['ffa724', 214]
let s:blc.lime           = ['aeee00', 154]
let s:blc.dress          = ['ff9eb8', 211]
let s:blc.toffee         = ['b88853', 137]
let s:blc.coffee         = ['c7915b', 173]
let s:blc.darkroast      = ['88633f', 95]


let s:blc.purewhite      = ['ffffff', 232]
let s:blc.pureblack      = ['000000',  16]
let s:blc.brightred      = ['ff0000', 196]
let s:blc.ultrablue      = ['0000af',  19]


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
  call s:HL('Folded', 'mediumgravel', 'bg', 'none') 
  call s:HL('VertSplit', 'lightgravel', 'bg', 'none')
else 
  call s:HL('Normal', 'coal', 'snow')

endif
" }}} 

" Syntax highlighting {{{
if &background ==# 'dark'
  call s:HL('Comment', 'mediumgravel')
  call s:HL('Constant','dalespale')
  call s:HL('Character','dalespale')

  call s:HL('Identifier','coffee')

  call s:HL('Statement','taffy') 

  call s:HL('PreProc','lime')

  call s:HL('Type','brightred')

  call s:HL('Special','lime')

  call s:HL('Underlined','lime')

  call s:HL('Ignore','lime')

  call s:HL('Error','lime')

  call s:HL('Todo','coal','dalespale','bold')
else 

endif
" }}} 


