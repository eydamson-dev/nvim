"-------------------CTRL-P------------------"
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|bin\|bower_components\|dist\|public\|test\|tmp\|docker'
let g:ctrlp_match_window = 'bottom,order:ttb,min:1,max:20,results:15'
let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<2-LeftMouse>'],
    \ 'AcceptSelection("t")': ['<cr>'],
    \ }
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

