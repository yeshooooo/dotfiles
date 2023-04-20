-- Don't auto commenting new lines
-- 开启新行关闭自动注释
vim.api.nvim_create_autocmd("BufEnter", {
  pattern = "",
  command = "set fo-=c fo-=r fo-=o",
})
