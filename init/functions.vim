" ----------------------------------------
" Functions
" ----------------------------------------

" ---------------
" Quick spelling fix (first item in z= list)
" ---------------
function! QuickSpellingFix()
  if &spell
    normal 1z=
  else
    " Enable spelling mode and do the correction
    set spell
    normal 1z=
    set nospell
  endif
endfunction

command! QuickSpellingFix call QuickSpellingFix()
nmap <silent> <leader>z :QuickSpellingFix<CR>

" ---------------
" Convert Ruby 1.8 hash rockets to 1.9 JSON style hashes.
" From: http://git.io/cxmJDw
" Note: Defaults to the entire file unless in visual mode.
" ---------------
command! -bar -range=% NotRocket execute
  \'<line1>,<line2>s/:\(\w\+\)\s*=>/\1:/e' . (&gdefault ? '' : 'g')

" ---------------
" Strip Trailing White Space
" ---------------
" From http://vimbits.com/bits/377
" Preserves/Saves the state, executes a command, and returns to the saved state
function! Preserve(command)
  " Preparation: save last search, and cursor position.
  let _s=@/
  let l = line(".")
  let c = col(".")
  " Do the business:
  execute a:command
  " Clean up: restore previous search history, and cursor position
  let @/=_s
  call cursor(l, c)
endfunction
"strip all trailing white space
command! StripTrailingWhiteSpace :call Preserve("%s/\\s\\+$//e")<CR>

" ---------------
" Paste using Paste Mode
"
" Keeps indentation in source.
" ---------------
function! PasteWithPasteMode()
  if &paste
    normal p
  else
    " Enable paste mode and paste the text, then disable paste mode.
    set paste
    normal p
    set nopaste
  endif
endfunction

command! PasteWithPasteMode call PasteWithPasteMode()
nmap <silent> <leader>p :PasteWithPasteMode<CR>

" ---------------
" Write Buffer
"
" Writes the current buffer unless we're the in QuickFix mode.
" ---------------

function WriteBuffer()
  if &filetype == "qf"
    execute "normal! \<enter>"
  else
    :write
  endif
endfunction

noremap <silent> <enter> :call WriteBuffer()<CR>

" Find current word in command mode
function! RgGrep()
  let command = "rg ".expand("<cword>")
  cexpr system(command)
  cw
endfunction

" Find current word in command mode
function! AgGrep()
  let command = "ag ".expand("<cword>")
  cexpr system(command)
  cw
endfunction

" Find current word in command mode
function! AckGrep()
  let command = "ack ".expand("<cword>")
  cexpr system(command)
  cw
endfunction

function! AckVisual()
  normal gv"xy
  let command = "ack ".@x
  cexpr system(command)
  cw
endfunction

function! AgVisual()
  normal gv"xy
  let command = "ag ".@x
  cexpr system(command)
  cw
endfunction

function! RgVisual()
  normal gv"xy
  let command = "rg ".@x
  cexpr system(command)
  cw
endfunction
