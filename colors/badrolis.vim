
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
let s:brc = {}


" The most basic of all our colors is a slightly tweaked version of the Molokai
" Normal text.
let s:brc.glass = ['000000', 0]
let s:brc.plain = ['f8f6f2', 15]

" Pure and simple.
let s:brc.snow = ['e4e4e4', 254]
let s:brc.coal = ['1c1c1c', 234]

" All of the Gravel colors are based on a brown from Clouds Midnight.
let s:brc.brightgravel   = ['d9cec3', 252]
let s:brc.lightgravel    = ['998f84', 245]
let s:brc.gravel         = ['857f78', 243]
let s:brc.mediumgravel   = ['666462', 241]
let s:brc.deepgravel     = ['45413b', 238]
let s:brc.deepergravel   = ['35322d', 236]
let s:brc.darkgravel     = ['242321', 235]
let s:brc.blackgravel    = ['1c1b1a', 233]
let s:brc.blackestgravel = ['141413', 232]

" A color sampled from a highlight in a photo of a glass of Dale's Pale Ale on
" my desk.
let s:brc.dalespale = ['fade3e', 221]

" A beautiful tan from Tomorrow Night.
let s:brc.dirtyblonde = ['f4cf86', 222]

" Delicious, chewy red from Made of Code for the poppiest highlights.
let s:brc.taffy = ['ff2c4b', 196]

" Another chewy accent, but use sparingly!
let s:brc.saltwatertaffy = ['8cffba', 121]

" The star of the show comes straight from Made of Code.
"
" You should almost never use this.  It should be used for things that denote
" 'where the user is', which basically consists of:
"
" * The cursor
" * A REPL prompt
let s:brc.tardis = ['0a9dff', 39]

" This one's from Mustang, not Florida!
let s:brc.orange = ['ffa724', 214]

" A limier green from Getafe.
let s:brc.lime = ['aeee00', 154]

" Rose's dress in The Idiot's Lantern.
let s:brc.dress = ['ff9eb8', 211]

" Another play on the brown from Clouds Midnight.  I love that color.
let s:brc.toffee = ['b88853', 137]

" Also based on that Clouds Midnight brown.
let s:brc.coffee    = ['c7915b', 173]
let s:brc.darkroast = ['88633f', 95]


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
            let c = get(s:brc, a:fg)
            let histring .= 'guifg=#' . c[0] . ' ctermfg=' . c[1] . ' '
        endif
    endif

    if a:0 >= 1 && strlen(a:1)
        if a:1 == 'bg'
            let histring .= 'guibg=bg ctermbg=bg '
        else
            let c = get(s:brc, a:1)
            let histring .= 'guibg=#' . c[0] . ' ctermbg=' . c[1] . ' '
        endif
    endif

    if a:0 >= 2 && strlen(a:2)
        let histring .= 'gui=' . a:2 . ' cterm=' . a:2 . ' '
    endif

    if a:0 >= 3 && strlen(a:3)
        let c = get(s:brc, a:3)
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

  call s:HL('Type','lime')

  call s:HL('Special','lime')

  call s:HL('Underlined','lime')

  call s:HL('Ignore','lime')

  call s:HL('Error','lime')

  call s:HL('Todo','coal','dalespale','bold')
else 

endif
" }}} 


