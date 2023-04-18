library(reshape2)

### 寬表變長表#####

colnames(iris)


iris_melt <- melt(iris,  #資料檔
                   id.vars ="Species", # 固定識別欄位
                 #  measure.vars = c("Sepal.Length","Sepal.Width"), # 預備轉換欄位
                   variable.name ="type", # 轉換後分組名稱
                   value.name ="mm")     # 轉換後存放的數值名稱
