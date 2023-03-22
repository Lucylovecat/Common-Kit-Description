################使用 weathermetrics 套件 ##################################
library(weathermetrics) 
#露點溫度轉濕度 ( fahrenheit華氏)
dewpoint.to.humidity(dp = NA, t = NA, 
                     temperature.metric = "fahrenheit") 
#露點溫度轉濕度  (celsius 攝氏)
dewpoint.to.humidity(dp = 18.68, t = 25, 
                     temperature.metric = "celsius") 

###################使用 bigleaf 套件 #################################
library(bigleaf) 
#計算 濕球溫度 (Tair 攝氏,  pressure 氣壓kPa ,rH 相對溼度(0~1))
wetbulb.temp(Tair= 25,pressure=103 ,VPD = rH.to.VPD(rH = 0.68, Tair = 25) ) 

#計算 露點溫度 (Tair 攝氏,  pressure 氣壓kPa ,rH 相對溼度(0~1))
dew.point(Tair= 25,VPD = rH.to.VPD(rH = 0.68, Tair = 25) ) 
