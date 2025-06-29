rm(list=ls())  #borra todas las variables que esten asignados
graphics.off() #cierra todas las graficas 
##### Diagramas de discriminaci?n tect?nica  ###
readline('Welcome ! lets generate some diagrams (please push enter to continue)')
Di=readline('Please type Pearce_Norry_1979')
if(Di=='Pearce_Norry_1979'){
  x11()
  D=read.csv('BTDD_Template.csv')
  Zr=D[,18]
  Y=D[,17]
  ### Zr- Zr-Y ###
  x1=c(35,120,60,16.5,35,63.5,75,225,625,225,75,225,280,140,35,63.5)
  y1=c(3.4,3.4,1.5,1.5,3.4,3.4,4,11.5,11.5,4,4,4,4,1.9,1.9,3.4)
  plot(Zr, Zr/Y,pch=2,col='red',xlab=c(expression(bold((Zr)))),ylab=c(expression(bold((Zr/Y)))),xlim=c(10,1000),ylim=c(1,30),axes=T, log ="xy");
  lines(x1,y1,lwd=1);
}
B=readline('Did you want to generate a report with the ratios values? Yes=(Y),No=(N)')
if (B=='Y'){
  X=D[,2]
  x=D[,1] ### Colocar la posici?n de la muestra
  Zr_Y=Zr/Y
  fa=data.frame(D,X,Zr_Y)
  write.csv(fa,file='Report_Pearce_Norry_1979.csv',row.names=T)
  print('Thanks for plotting with us ! not forget to follow us in www.platicandodelatierra.com')
}else if (B=='N'){
  b=print('Thanks, I invite you to generate more diagrams at www.platicandodelatierra.com ')
}