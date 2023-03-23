# install.packages("logger")
library(logger)
###########log定義設定###########################
#定義訊息Log層級
log_threshold(TRACE)  # 訊息重要性的順序從高到低為 FATAL > ERROR > WARN > SUCCESS > INFO > DEBUG > TRACE  

#選擇合適Log訊息內容格式
# layout_simple()  #  layout_simple
# layout_glue()
# layout_glue_colors()
# layout_json()
# layout_glue_generator()

#定義Log訊息整體外觀
log_layout(layout_simple) #預設 layout_glue_generator
log_layout(layout_glue)
log_layout(layout_glue_colors)
log_layout(layout_json(fields = c("time", "level", "msg")))
log_layout(layout_glue_generator(format = '"{time}",{level},{msg}'))

#定義寫入log檔案形式
log_appender(appender_console)    #appender_console將 log 檔案呈現至 console (無意義)
log_appender(appender_file("./Data/log/my_log.csv"))   #appender_file將 log 儲存至檔案

#########打印log紀錄至Console螢幕#################
log_failure("失敗錯誤") # 失敗的訊息

#########寫入log紀錄至csv檔案#################
log_fatal("嚴重") #記錄最嚴重訊息
log_error('錯誤') #記錄錯誤訊息
log_warn("警告")  #記錄警告訊息
log_success("成功") #記錄警告訊息
log_info("一般")  #記錄一般訊息
log_debug("除錯") #紀錄除錯紀錄
log_trace("最低") #紀錄最低訊息
