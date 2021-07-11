" Configuração NeoVim
" Pedro Serey, UFCG

" set leader para espaço
let g:mapleader = ' '
syntax enable                           " Enables syntax highlighing
set hidden                              " Required to keep multiple buffers open multiple buffers
set nowrap                              " Display long lines as just one line
set encoding=utf-8                      " The encoding displayed
set pumheight=10                        " Makes popup menu smaller
set fileencoding=utf-8                  " The encoding written to file
set ruler              			            " Show the cursor position all the time
set cmdheight=2                         " More space for displaying messages
set iskeyword+=-                      	" treat dash separated words as a word text object"
set mouse=a                             " Enable your mouse
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set t_Co=256                            " Support 256 colors
set conceallevel=0                      " So that I can see `` in markdown files
set shiftwidth=2                        " Change the number of space characters inserted for indentation
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set expandtab                           " Converts tabs to spaces
set smartindent                         " Makes indenting smart
set autoindent                          " Good auto indent
set laststatus=0                        " Always display the status line
set number                              " Line numbers
set background=dark                     " tell vim what the background color looks like
set showtabline=2                       " Always show tabs
set noshowmode                          " We don't need to see things like -- INSERT -- anymore
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc
set updatetime=300                      " Faster completion
set timeoutlen=500                      " By default timeoutlen is 1000 ms
set formatoptions-=cro                  " Stop newline continution of comments
set clipboard=unnamedplus               " Copy paste between vim and everything else
"set autochdir                           " Your working directory will always be the same as your working directory

au! BufWritePost $MYVIMRC source %      " auto source when writing to init.vm alternatively you can run :source $MYVIMRC

" Type <leader>/ to toggle highlighting on/off.

" Deixa o background transparente caso terminal esteja configurado
au ColorScheme * hi Normal ctermbg=none guibg=none
au ColorScheme myspecialcolors hi Normal ctermbg=red guibg=red

" You can't stop me
cmap w!! w !sudo tee %

" Configuração do search
set hlsearch
hi Search ctermbg=226 ctermfg=black
nnoremap <leader>h :noh<CR>

" ============================================                                                                                                                                                                                                                                                                                
" Autocommands                                                                                                                                                                                                                                                                                                                
" ============================================                                                                                                                                                                                                                                                                                
:au BufNewFile *.R r ~/.vim/skeleton.R                                                                                                                                                                                                                                                                                        
augroup md                                                                                                                                                                                                                                                                                                                    
    " reinicia formatoptions ao valor default                                                                                                                                                                                                                                                                                 
    setlocal formatoptions=tcq                                                                                                                                                                                                                                                                                                
                                                                                                                                                                                                                                                                                                                              
    " Permite formatar parágrafos automaticamente                                                                                                                                                                                                                                                                             
"    setlocal formatoptions+=a                                                                                                                                                                                                                                                                                                
                                                                                                                                                                                                                                                                                                                              
    " Permite formatar listas numeradas                                                                                                                                                                                                                                                                                       
    " (não usar com option '2'; pressupõe uso de autoindent)                                                                                                                                                                                                                                                                  
    setlocal formatoptions+=n                                                                                                                                                                                                                                                                                                 
augroup end                                                                                                                                                                                                                                                                                                                   
                                                                                                                                                                                                                                                                                                                              
augroup html                                                                                                                                                                                                                                                                                                                  
    autocmd BufNewFile,BufRead *.html setlocal nowrap                                                                                                                                                                                                                                                                         
    autocmd BufNewFile,BufRead *.html set textwidth=0                                                                                                                                                                                                                                                                         
    autocmd BufNewFile,BufRead *.html highlight clear OverLength                                                                                                                                                                                                                                                              
    autocmd FileType html,css EmmetInstall                                                                                                                                                                                                                                                                                    
    autocmd BufNewFile,BufRead *.html set tabstop=2                                                                                                                                                                                                                                                                           
    autocmd BufNewFile,BufRead *.html set softtabstop=2                                                                                                                                                                                                                                                                       
    autocmd BufNewFile,BufRead *.html set shiftwidth=2                                                                                                                                                                                                                                                                        
"    autocmd BufNewFile,BufRead *.html inoreabbrev div <div></div><Esc>5hi<C-R>=Eatchar('\s')<CR>                                                                                                                                                                                                                             
"    autocmd BufNewFile,BufRead *.html inoreabbrev html <html></html><Esc>6hi<cr><cr>k<C-R>=Eatchar('\s')<CR>                                                                                                                                                                                                                 
"    autocmd BufNewFile,BufRead *.html inoreabbrev head <head></head><Esc>6hi<C-R>=Eatchar('\s')<CR>                                                                                                                                                                                                                          
"    autocmd BufNewFile,BufRead *.html inoreabbrev body <body></body><Esc>6hi<C-R>=Eatchar('\s')<CR>                                                                                                                                                                                                                          
"    autocmd BufNewFile,BufRead *.html inoreabbrev p <p></p><Esc>6hi<C-R>=Eatchar('\s')<CR>                                                                                                                                                                                                                                   
augroup end                                                                                                                                                                                                                                                                                                                   
                                                                                                                                                                                                                                                                                                                              
augroup js                                                                                                                                                                                                                                                                                                                    
    autocmd BufNewFile,BufRead *.js setlocal nowrap                                                                                                                                                                                                                                                                           
    autocmd BufNewFile,BufRead *.js set textwidth=0                                                                                                                                                                                                                                                                           
    autocmd BufNewFile,BufRead *.js highlight clear OverLength                                                                                                                                                                                                                                                                
    autocmd BufNewFile,BufRead *.js set tabstop=4                                                                                                                                                                                                                                                                             
    autocmd BufNewFile,BufRead *.js set softtabstop=4                                                                                                                                                                                                                                                                         
    autocmd BufNewFile,BufRead *.js set shiftwidth=4                                                                                                                                                                                                                                                                          
augroup end                                                                                                                                                                                                                                                                                                                   
                                                                                                                                                                                                                                                                                                                              
augroup py                                                                                                                                                                                                                                                                                                                    
    autocmd BufNewFile,BufRead *.py setlocal nowrap                                                                                                                                                                                                                                                                           
    autocmd BufNewFile,BufRead *.py set textwidth=0                                                                                                                                                                                                                                                                           
    "autocmd BufNewFile,BufRead *.py highlight clear OverLength                                                                                                                                                                                                                                                               
    "autocmd BufNewFile,BufRead *.py match OverLength /\%120v.*/                                                                                                                                                                                                                                                              
    autocmd BufNewFile,BufRead *.py set tabstop=4                                                                                                                                                                                                                                                                             
    autocmd BufNewFile,BufRead *.py set softtabstop=4                                                                                                                                                                                                                                                                         
    autocmd BufNewFile,BufRead *.py set shiftwidth=4                                                                                                                                                                                                                                                                          
    autocmd BufNewFile,BufRead *.py set wrap                                                                                                                                                                                                                                                                                  
    autocmd BufNewFile,BufRead *.py set linebreak                                                                                                                                                                                                                                                                             
    autocmd BufNewFile,BufRead *.py set textwidth=0                                                                                                                                                                                                                                                                           
    autocmd BufNewFile,BufRead *.py set breakindentopt=shift:6,min:40,sbr                                                                                                                                                                                                                                                     
    "autocmd BufNewFile *.py 0read!h                                                                                                                                                      
augroup end

augroup java
augroup end

" vimspector configs

nnoremap <leader>da :call vimspector#Launch()<CR>
nnoremap <leader>dc :call GotoWindow(g:vimspector_session_windows.code)<CR>
nnoremap <leader>dv :call GotoWindow(g:vimspector_session_windows.variables)<CR>
nnoremap <leader>dw :call GotoWindow(g:vimspector_session_windows.watches)<CR>
nnoremap <leader>ds :call GotoWindow(g:vimspector_session_windows.stack_trace)<CR>
nnoremap <leader>do :call GotoWindow(g:vimspector_session_windows.output)<CR>
nnoremap <leader>di :call AddToWatch()<CR>
nnoremap <leader>dx :call vimspector#Reset()<CR>
nnoremap <leader>dX :call vimspector#ClearBreakpoints()<CR>
nnoremap <S-k> :call vimspector#StepOut()<CR>
nnoremap <S-l> :call vimspector#StepInto()<CR>
nnoremap <S-j> :call vimspector#StepOver()<CR>
nnoremap <leader>d_ :call vimspector#Restart()<CR>
nnoremap <leader>dn :call vimspector#Continue()<CR>
nnoremap <leader>drc :call vimspector#RunToCursor()<CR>
nnoremap <leader>dh :call vimspector#ToggleBreakpoint()<CR>
nnoremap <leader>de :call vimspector#ToggleConditionalBreakpoint()<CR>
