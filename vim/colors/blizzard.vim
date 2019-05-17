" Vim color file - Blizzard
" Maintainer: Christopher Giroir <cgiroir@blizzard.com>
" Last Change:
" URL:

" cool help screens
" :he group-name
" :he highlight-groups
" :he cterm-colors

" your pick:
hi clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="blizzard"

if has("gui_running")
  set background=dark
endif

" Color Variables
let s:colors = {
      \ 'black': { 'ansi':0, 'hex':'#151515' },
      \ 'red': { 'ansi':1, 'hex':'#c21e1e' },
      \ 'green': { 'ansi':2, 'hex':'#519b2e' },
      \ 'yellow': { 'ansi':3, 'hex':'#ea7b00' },
      \ 'blue': { 'ansi':4, 'hex':'#007dbf' },
      \ 'magenta': { 'ansi':5, 'hex':'#862ea4' },
      \ 'cyan': { 'ansi':6, 'hex':'#0fb2a5' },
      \ 'white': { 'ansi':7, 'hex':'#686868' },
      \ 'brightBlack': { 'ansi':8, 'hex':'#2a2a2a' },
      \ 'brightRed': { 'ansi':9, 'hex':'#ff2e2e' },
      \ 'brightGreen': { 'ansi':10, 'hex':'#8cda38' },
      \ 'brightYellow': { 'ansi':11, 'hex':'#ffc70e' },
      \ 'brightBlue': { 'ansi':12, 'hex':'#00aeef' },
      \ 'brightMagenta': { 'ansi':13, 'hex':'#ee4bb5' },
      \ 'brightCyan': { 'ansi':14, 'hex':'#4bf3e6' },
      \ 'brightWhite': { 'ansi':15, 'hex':'#f6f6f6' } }

function! s:hi(group, values)
  let l:command = 'hi ' . a:group

  if has_key(a:values, 'term')
    let l:command .= ' term=' . a:values.term
    let l:command .= ' cterm=' . a:values.term
    let l:command .= ' gui=' . a:values.term
  endif

  if has_key(a:values, 'fg')
    let l:command .= ' ctermfg=' . s:colors[a:values.fg].ansi
    let l:command .= ' guifg=' . s:colors[a:values.fg].hex
  endif

  if has_key(a:values, 'bg')
    let l:command .= ' ctermbg=' . s:colors[a:values.bg].ansi
    let l:command .= ' guibg=' . s:colors[a:values.bg].hex
  endif

  if has_key(a:values, 'sp')
    let l:command .= ' guisp=' . s:colors[a:values.sp].hex
  endif

  execute l:command
endfunction

function! s:onlyUnderline(group, color)
  execute 'hi ' . a:group . ' term=underline cterm=underline gui=underline ctermfg=' . s:colors[a:color].ansi . ' guisp=' . s:colors[a:color].hex . ' ctermbg=NONE guifg=NONE guibg=NONE'
endfunction

" hi Normal ctermbg=0 ctermfg=15 guibg=#151515 guifg=#f6f6f6
call s:hi('Normal', {'bg':'black','fg':'brightWhite'})

"hi Cursor
"hi CursorIM
call s:hi('CursorLineNr', {'fg':'brightYellow'})
call s:hi('Directory', {'fg':'brightBlue'})
call s:hi('DiffAdd', {'bg':'brightBlack'})
call s:hi('DiffChange', {'bg':'brightBlack'})
call s:hi('DiffDelete', {'fg':'red','bg':'brightBlack'})
call s:hi('DiffText', {'term':'none','bg':'brightBlack'})
call s:hi('EndOfBuffer', {'fg':'blue'})
call s:hi('ErrorMsg', {'fg':'brightRed'})
call s:hi('VertSplit', {'term':'NONE','fg':'brightBlack','bg':'black'})
call s:hi('Folded', {'fg':'blue','bg':'brightBlack'})
call s:hi('FoldColumn', {'fg':'blue','bg':'brightBlack'})
call s:hi('IncSearch', {'term':'underline','fg':'yellow','sp':'yellow','bg':'brightBlack'})
call s:hi('LineNr', {'fg':'brightBlack'})
"hi ModeMsg
"hi MoreMsg
"hi NonText
call s:hi('NonText', {'fg':'blue','bg':'brightBlack'})
"hi Question
call s:onlyUnderline('Search', 'yellow')
"hi SpecialKey
call s:hi('StatusLine', {'term':'NONE','fg':'brightWhite','bg':'brightBlack'})
call s:hi('StatusLineNC', {'fg':'brightBlack','bg':'brightBlack'})
"hi Title
call s:hi('Visual', {'bg':'brightBlack'})
"hi VisualNOS
"hi WarningMsg
call s:hi('WildMenu', {'fg':'brightYellow','bg':'brightBlack'})
"hi Menu
"hi Scrollbar
"hi Tooltip

" Base Syntax Groups
call s:hi('Comment',{'fg':'white'})
call s:hi('Constant',{'fg':'brightYellow'})
call s:hi('Identifier',{'fg':'brightBlue'})
call s:hi('Statement',{'fg':'yellow'})
call s:hi('PreProc',{'fg':'brightMagenta'})
call s:hi('Type',{'fg':'blue'})
call s:hi('Special',{'fg':'brightGreen'})
call s:onlyUnderline('Underlined','brightWhite')
call s:hi('Ignore',{'fg':'white'})
call s:hi('Error',{'term':'underline','fg':'brightRed','bg':'black'})
"hi Todo
