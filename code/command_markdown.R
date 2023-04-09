# 先去https://pandoc.org/installing.html 下載 pandoc


# 切換到檔案目錄下
system(command = "cd C:\\Users\\User\\R_workspace\\R36key")

system(command = "pandoc -o test.html test.md")


system(command = paste0("pandoc -o ",writeDate,"hel.html test.md"))


system(command = paste0("pandoc -o hel",format(Sys.Date(),"%Y%m%d"),".html test.md"),translate =T)
