library(comf)  #PMV套件


PMVtest <-  data.frame(ta= sample(c(22:36.0),100,replace = T),
                       rh = sample(c(52:99),100,replace = T))
                   

PMVtest[,ncol(PMVtest)+1] <- calcPMVadj(ta= PMVtest$ta,
                                        tr= PMVtest$ta,
                                        rh= PMVtest$rh , 
                                        vel=0.1, 
                                        clo = 0.5, 
                                        met =1.1,
                                        wme = 0)

###########################################
#ta = 25.4 # 室內溫度
#tr = 25.4 # 平均輻射溫度
#vel = 0.1 # 風速
#rh  = 64  #  相對濕度
#clo = 0.5  # 衣著度
#met  =1.1 # 人體代謝
#wme = 0   # 外部工作值
#apCoeff = 0.293
#calcaPMV(ta, tr, vel, rh, clo , met, wme ,apCoeff = 0.293)
#calcPMV(ta, tr, vel, rh, clo, met, wme, basMet=58.15)
