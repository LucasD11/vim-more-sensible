if exists("b:did_autoload_more_sensible")
    finish
endif
let b:did_autoload_more_sensible = 1

set nu
set mouse=a

" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

" Highlight whitespace in end of a line
autocmd Filetype python match Error /\s\+$/

" Highlight long line
highlight ColorColumn ctermbg=235 guibg=#2c2d27
let &colorcolumn="100,".join(range(120,999),",")

" Using <Esc> to exit terminal mode
tnoremap <Esc> <C-\><C-n>

" Bind fuzzy file finder
nnoremap <leader>f :FZF<cr>

" Open file at the same line number as last close
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif  

" Display Tab
set list

" Hide line number in terminal mode
autocmd TermOpen * setlocal nonumber norelativenumber
