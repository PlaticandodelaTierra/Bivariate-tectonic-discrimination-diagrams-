rm(list=ls())  #borra todas las variables que esten asignados
graphics.off() #cierra todas las graficas 
##### Diagramas de discriminaci?n tect?nica  ###
readline('Welcome ! lets generate some diagrams (please push enter to continue)')
Di=readline('Please type Pearce_Gale_1977')
if(Di=='Pearce_Gale_1977'){
  x11()
  D=read.csv('BTDD_Template.csv')
  Zr=D[,18]
  Y=D[,17]
  TiO=D[,3]
  Ti=(47.87/79.87)*TiO
  ### Zr- Zr-Y ###
  plot(Ti/Y, Zr/Y,pch=2,col='red',xlab=c(expression(bold((Ti/Y)))),ylab=c(expression(bold((Zr/Y)))),xlim=c(0,1000),ylim=c(0,7.5),axes=T);
  lines(c(313,513),c(7.5,0),lwd=1);
  text()
  text()
}
B=readline('Did you want to generate a report with the ratios values? Yes=(Y),No=(N)')
if (B=='Y'){
  X=D[,2]
  x=D[,1] ### Colocar la posici?n de la muestra
  Ti_Y=Ti/Y
  Zr_Y=Zr/Y
  fa=data.frame(D,X,Ti_Y,Zr_Y)
  write.csv(fa,file='Report_Pearce_Gale_1977.csv',row.names=T)
  print('Thanks for plotting with us ! not forget to follow us in www.platicandodelatierra.com')
}else if (B=='N'){
  b=print('Thanks, I invite you to generate more diagrams at www.platicandodelatierra.com ')
}