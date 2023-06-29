lua require('plugins')

"---- BEHVARIOR ---"
" tab select
vnoremap > >gv
vnoremap < <gv

" comment?
vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>

nnoremap gp `[v`]

" sm fix
autocmd FileType * set formatoptions-=cro

" Map Ctrl-Backspace to delete the previous word in insert mode.
imap <C-BS> <C-W>

" don't register on paste
" vnoremap <leader>p "_dP
vnoremap p "_dP

"---- Yoink ---"

nmap p <plug>(YoinkPaste_p)
nmap P <plug>(YoinkPaste_P)

" Also replace the default gp with yoink paste so we can toggle paste in this case too
" nmap gp <plug>(YoinkPaste_gp)
" nmap gP <plug>(YoinkPaste_gP)

"---- Cutlass ---"
nnoremap c d
xnoremap c d

nnoremap cc dd
nnoremap C D

"---- MACROS ---"

" a(a,b,c,d,e)
" :let @a='F(a
" f)i
" k:s/,/#r�kb�kb#r�kb�kb\r�kl�kl�kl�kb,�kr�kr�kr,/g
" /asdgasdg
" '



"---- QUICKSCOPE ---"


" highlight QuickScopePrimary guibg='#afff5f' gui=bold ctermfg=Gray cterm=underline
" highlight QuickScopeSecondary guibg='#5fffff' gui=bold ctermfg=Gray cterm=underline

highlight QuickScopePrimary gui=NONE ctermfg=Gray cterm=underline
highlight QuickScopeSecondary gui=NONE

"---- PACKER ---"
augroup packer_user_config
  autocmd!
  autocmd BufWritePost plugins.lua source <afile> | PackerCompile
augroup end
