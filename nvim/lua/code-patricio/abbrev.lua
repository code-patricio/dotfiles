--vim.cmd[[iabbrev ' ''<Left>]]
--vim.cmd[[iabbrev " ""<Left>]]
vim.cmd[[iabbrev ( ()<Left>]]
vim.cmd[[iabbrev { {}<Left>]]
--vim.cmd[[iabbrev ` ``<Left>]]
--vim.cmd[[iabbrev ´ ´´<Left>]]

vim.cmd[[autocmd Filetype c iabbrev pf printf("");<Left><Left><Left>]]
vim.cmd[[autocmd Filetype c iabbrev inc #include <><Left>]]

vim.cmd[[autocmd FileType html iabbrev htmls <!DOCTYPE html><CR><Tab><body><CR><CR><\body><Up>]]
    
--vim.cmd[[iabbrev lorem Lorem ipsum dolor sit amet, consectetur adipiscing elit. <CR>Sed posuere commodo hendrerit. <CR>Donec hendrerit velit in enim egestas, nec maximus urna bibendum. <CR>Quisque mi felis, convallis sed lacus eget, viverra consectetur velit. <CR>Nunc et consequat augue. <CR>Integer in leo volutpat arcu ultricies elementum vel in erat. <CR>Pellentesque ultricies, odio quis mollis lobortis, nunc urna viverra risus, id pretium tortor elit nec nibh. <CR>Suspendisse fermentum nulla at convallis rutrum. <CR>Integer tristique dictum efficitur. <CR>Curabitur in aliquam neque. <CR>Sed dignissim quam sed mauris interdum condimentum.<CR>Fusce lectus ex, vestibulum id egestas quis, ultricies at lorem.<CR>In vitae pretium erat.<CR>Sed orci nisi, semper sit amet elit quis, ullamcorper rhoncus nunc.<CR>Phasellus aliquet, magna in tristique fringilla, justo tortor placerat mauris, eu varius eros nisi id arcu.<CR>Praesent ac nibh at tellus molestie rhoncus.]]
    
vim.cmd[[autocmd FileType markdown iabbrev mddate <C-r>=strftime('%y%m%d-%H%M')<CR>]]
vim.cmd[[autocmd FileType markdown iabbrev date <C-r>=strftime('%y/%m/%d')<CR>]]


