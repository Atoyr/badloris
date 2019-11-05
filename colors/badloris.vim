
" Supporting code -------------------------------------------------------------
" Preamble {{{

hi clear

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
let s:blc.purewhite      = ['ffffff', 231]
let s:blc.pureblack      = ['000000',  16]
" }}}

" no color
" All of the Gravel colors are based on a brown from Clouds Midnight.
let s:blc.brightgravel            = ['d9cec3', 252]
let s:blc.lightgravel             = ['998f84', 245]
let s:blc.gravel                  = ['857f78', 243]
let s:blc.mediumgravel            = ['666462', 241]
let s:blc.deepgravel              = ['45413b', 238]
let s:blc.deepergravel            = ['35322d', 236]
let s:blc.darkgravel              = ['242321', 235]
let s:blc.blackgravel             = ['1c1b1a', 233]
let s:blc.blackestgravel          = ['141413', 232]

" Vivid color {{{
let s:blc.vividred                = ['ff0000', 196]
let s:blc.vividorange             = ['ff8700', 208]
let s:blc.vividyellow             = ['ffff00', 226]
let s:blc.vividemerald            = ['87ff00', 118]
let s:blc.vividgreen              = ['00ff00',  46]
let s:blc.vividemeraldgreen       = ['00ff87',  48]
let s:blc.vividcyan               = ['00ffff',  51]
let s:blc.vividmarinblue          = ['0087ff',  31]
let s:blc.vividblue               = ['0000ff',  21]
let s:blc.vividpurple             = ['8700ff',  93]
let s:blc.vividmagenta            = ['ff00ff', 201]
let s:blc.vividpink               = ['ff0087', 198]
" }}}

" color {{{
let s:blc.gold                    = ['ffd700', 220]
" }}}

" Light color {{{
let s:blc.lightred                = ['ff5f5f', 203]
let s:blc.lightorange             = ['ffaf5f', 215]
let s:blc.lightyellow             = ['ffff5f', 227]
let s:blc.lightemerald            = ['afff5f', 155]
let s:blc.lightgreen              = ['5fff5f',  83]
let s:blc.lightemeraldgreen       = ['5fffaf',  85]
let s:blc.lightcyan               = ['5fffff',  87]
let s:blc.lightmarinblue          = ['5fafff',  75]
let s:blc.lightblue               = ['5f5fff',  63]
let s:blc.lightpurple             = ['af5fff', 135]
let s:blc.lightmagenta            = ['ff5fff', 207]
let s:blc.lightpink               = ['ff5faf', 205]
" }}}

" pale color {{{
let s:blc.palered                 = ['ff8787', 210]
let s:blc.paleorange              = ['ffd787', 222]
let s:blc.paleyellow              = ['ffff87', 228]
let s:blc.paleemerald             = ['d7ff87', 192]
let s:blc.palegreen               = ['87ff87', 120]
let s:blc.paleemeraldgreen        = ['87ffd7', 122]
let s:blc.palecyan                = ['87ffff', 123]
let s:blc.palemarinblue           = ['87d7ff', 117]
let s:blc.paleblue                = ['8787ff', 105]
let s:blc.palepurple              = ['d787ff', 177]
let s:blc.palemagenta             = ['ff87ff', 213]
let s:blc.palepink                = ['ff87d7', 212]
" }}}

" very pale color {{{
let s:blc.verypalered             = ['ffafaf', 217]
let s:blc.verypaleorange          = ['ffd7af', 223]
let s:blc.verypaleyellow          = ['ffffaf', 229]
let s:blc.verypaleemerald         = ['d7ffaf', 193]
let s:blc.verypalegreen           = ['afffaf', 157]
let s:blc.verypaleemeraldgreen    = ['afffd7', 158]
let s:blc.verypalecyan            = ['afffff', 159]
let s:blc.verypalemarinblue       = ['afd7ff', 153]
let s:blc.verypaleblue            = ['afafff', 147]
let s:blc.verypalepurple          = ['d7afff', 183]
let s:blc.verypalemagenta         = ['ffafff', 219]
let s:blc.verypalepink            = ['ffafd7', 218]
" }}}

" strong color {{{
let s:blc.strongred               = ['d70000', 160]
let s:blc.strongorange            = ['d78700', 172]
let s:blc.strongyellow            = ['d7d700', 184]
let s:blc.strongemerald           = ['87d700', 112]
let s:blc.stronggreen             = ['00d700',  40]
let s:blc.strongemeraldgreen      = ['00d787',  42]
let s:blc.strongcyan              = ['00d7d7',  44]
let s:blc.strongmarinblue         = ['0087d7',  32]
let s:blc.strongblue              = ['0000d7',  21]
let s:blc.strongpurple            = ['8700d7',  92]
let s:blc.strongmagenta           = ['d700d7', 164]
let s:blc.strongpink              = ['d70087', 162]
" }}}

" soft color {{{
let s:blc.softred                 = ['af5f5f', 131]
let s:blc.softorange              = ['af875f', 137]
let s:blc.softyellow              = ['afaf5f', 143]
let s:blc.softemerald             = ['87af5f', 107]
let s:blc.softgreen               = ['5faf5f',  71]
let s:blc.softemeraldgreen        = ['5faf87',  72]
let s:blc.softcyan                = ['5fafaf',  73]
let s:blc.softmarinblue           = ['5f87af',  67]
let s:blc.softblue                = ['5f5faf',  61]
let s:blc.softpurple              = ['875faf',  97]
let s:blc.softmagenta             = ['af5faf', 133]
let s:blc.softpink                = ['af5f87', 132]
" }}}

" dull color {{{
let s:blc.dullred                 = ['d78787', 174]
let s:blc.dullorange              = ['d7af87', 180]
let s:blc.dullyellow              = ['d7d787', 186]
let s:blc.dullemerald             = ['afd787', 150]
let s:blc.dullgreen               = ['87d787', 114]
let s:blc.dullemeraldgreen        = ['87d7af', 115]
let s:blc.dullcyan                = ['87d7d7', 116]
let s:blc.dullmarinblue           = ['87afd7', 110]
let s:blc.dullblue                = ['8787d7', 104]
let s:blc.dullpurple              = ['af87d7', 140]
let s:blc.dullmagenta             = ['d787d7', 176]
let s:blc.dullpink                = ['d787af', 175]
" }}}

" deep color {{{
let s:blc.deepred                 = ['af0000', 124]
let s:blc.deeporange              = ['af5f00', 130]
let s:blc.deepyellow              = ['afaf00', 142]
let s:blc.deepemerald             = ['5faf00',  70]
let s:blc.deepgreen               = ['00af00',  34]
let s:blc.deepemeraldgreen        = ['00af5f',  35]
let s:blc.deepcyan                = ['00afaf',  37]
let s:blc.deepmarinblue           = ['005faf',  25]
let s:blc.deepblue                = ['0000af',  19]
let s:blc.deeppurple              = ['5f00af',  55]
let s:blc.deepmagenta             = ['af00af', 127]
let s:blc.deeppink                = ['af005f', 125]
" }}}

" dark color {{{
let s:blc.darkred                 = ['870000',  88]
let s:blc.darkorange              = ['875f00',  94]
let s:blc.darkyellow              = ['878700', 100]
let s:blc.darkemerald             = ['5f8700',  64]
let s:blc.darkgreen               = ['008700',  28]
let s:blc.darkemeraldgreen        = ['00875f',  29]
let s:blc.darkcyan                = ['008787',  30]
let s:blc.darkmarinblue           = ['005f87',  24]
let s:blc.darkblue                = ['000087',  21]
let s:blc.darkpurple              = ['5f0087',  54]
let s:blc.darkmagenta             = ['870087',  90]
let s:blc.darkpink                = ['87005f',  89]
" }}}

" deep dark color {{{
let s:blc.deepdarkred             = ['5f0000',  52]
let s:blc.deepdarkyellow          = ['5f5f00',  58]
let s:blc.deepdarkgreen           = ['005f00',  22]
let s:blc.deepdarkcyan            = ['005f5f',  23]
let s:blc.deepdarkblue            = ['00005f',  17]
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

" Syntax highlighting group-name {{{
if &background ==# 'dark'
  call s:HL('Comment', 'deepdarkgreen')
  call s:HL('Constant','lightorange','','bold')
  call s:HL('String','paleorange','','none')
  call s:HL('Character','lightorange','','bold')
  call s:HL('Number','softorange','','none')
  call s:HL('Boolean','softorange','','none')
  call s:HL('Float','softorange','','none')

  call s:HL('Identifier','vividorange','','bold')
  call s:HL('Function','vividorange','','none')

  call s:HL('Statement','deepred') 
  call s:HL('Conditional','lightred') 
  call s:HL('Repeat','lightred') 
  call s:HL('Label','lightred','','bold') 
  call s:HL('Operator','lightred')
  call s:HL('Keyword','lightred')
  call s:HL('Exception','lightred')

  call s:HL('PreProc','dullgreen')
  call s:HL('Include','dullgreen','','bold')
  call s:HL('Define','dullgreen','','bold')
  call s:HL('Macro','dullgreen','','bold')
  call s:HL('PreCondit','dullgreen')
"
  call s:HL('Type','dullblue')
  call s:HL('StorageClass','softblue','','bold')
  call s:HL('Structure','dullblue','','bold')
  call s:HL('Typedef','dullgreen','','bold')

  call s:HL('Special','verypalecyan')
  call s:HL('SpecialChar','verypalered')
  call s:HL('Tag','verypalered')
  call s:HL('Delimiter','verypalered')
  call s:HL('SpecialComment','verypalered')
  call s:HL('Debug','verypalered')

  call s:HL('Underlined','dullgreen')
  
  call s:HL('Ignore','lightgravel')

  call s:HL('Error','brightgravel','vividred')

  call s:HL('Todo','coal','dullcyan','bold')
else 
  call s:HL('Comment', 'deepdarkgreen')
  call s:HL('Constant','lightorange','','bold')
  call s:HL('String','paleorange','','none')
  call s:HL('Character','lightorange','','bold')
  call s:HL('Number','softorange','','none')
  call s:HL('Boolean','softorange','','none')
  call s:HL('Float','softorange','','none')


  call s:HL('Special','verypalecyan')

endif
" }}} 

" Syntax highlig htingghlight-group  {{{
if &background ==# 'dark'
  call s:HL('Cursor','dullorange','','reverse')
  call s:HL('iCursor','','dullorange','reverse')
  call s:HL('vCursor','','dullorange','none')
  call s:HL('CursorLine','','deepergravel','none')
  call s:HL('CursorColumn','','deepergravel','none')

  call s:HL('Search','', 'softblue')
  call s:HL('IncSearch','', 'softblue')

  call s:HL('LineNr','darkorange')
  call s:HL('CursorLineNr','strongorange')
  call s:HL('SignColumn','','blackgravel')
  call s:HL('VertSplit','blackgravel','vividorange','reverse')

  call s:HL('Pmenu','brightgravel','blackestgravel')
  call s:HL('PmenuSel','brightgravel','darkgravel')

  call s:HL('SpecialKey','deepgravel')

  call s:HL('Visual','','softblue')

  call s:HL('Directory','gold')

  call s:HL('DiffAdd','','deepdarkblue')
  call s:HL('DiffChange','','deepdarkmagenta')
  call s:HL('DiffDelete','deepgravel','coal')
  call s:HL('DiffText','','deepmagenta')
else 
  call s:HL('CursorLine','','lightgravel','none')
  call s:HL('CursorColumn','','lightgravel','none')

  call s:HL('Search','brightgravel', 'softmarinblue')
  call s:HL('IncSearch','brightgravel', 'lightblue')

  call s:HL('LineNr','darkorange') 

  call s:HL('SpecialKey','deepgravel')
endif
" }}}

