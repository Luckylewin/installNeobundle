#!/bin/bash                                                                                                                                                                                                                                                                   
home=~
vimrc=$home'/.vimrc'
path=$home'/.vim/bundle'
curr=$(pwd)
config=$pwd'/airline.txt'
cd ~
if [ -e $vimrc ]
then
        isInstall=$(cat $vimrc|grep neobundle|wc -l)

      if [[ -d $path || $isInstall -ne 0 ]]
        then
            echo "Already install NeoBundle,please rm -rf the dir '~/.vim/bundle' and remove the config about 'neobundle' from file of .vimrc"  && exit 0
      fi
else
        touch $vimrc;
fi
curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh | sh
    echo " 
         set t_Co=256
         set laststatus=2
         set cursorline
         set number
         if 0 | endif
         if &compatible
         endif
         set runtimepath+=~/.vim/bundle/neobundle.vim/
         call neobundle#begin(expand('~/.vim/bundle/'))" >> $vimrc

         echo " NeoBundleFetch 'Shougo/neobundle.vim'" >> $vimrc
         echo " NeoBundle      'vim-airline/vim-airline.git'" >> $vimrc
         echo " NeoBundle      'chr4/nginx.vim'" >> $vimrc
         echo " NeoBundle      'scrooloose/nerdtree.git'" >> $vimrc
         echo "call neobundle#end()
               filetype plugin indent on
               NeoBundleCheck" >> $vimrc

        echo '"---------------airline options------------------------' >> $vimrc
        echo 'let g:airline#extensions#tabline#enabled=1 "顶部tab显示"' >> $vimrc
        sed -n '193,195p' $config >> ~/.vimrc
        sed -n '216,223p' $config >> ~/.vimrc
        echo '"---------------nmap options-------------------------------------' >> $vimrc
        echo ' nmap <F5> :NERDTree<cr>
               nmap <tab> :bn<cr>
               nmap <F6> :q!<cr>' >> $vimrc
