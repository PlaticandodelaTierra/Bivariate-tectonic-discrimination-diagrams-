rm(list=ls())  #borra todas las variables que esten asignados
graphics.off() #cierra todas las graficas 
##### Diagramas de discriminaci?n tect?nica  ###
readline('Welcome ! lets generate some diagrams (please push enter to continue)')
Di=readline('Please type Pearce_2008')
if(Di=='Pearce_2008'){
  A=readline('Did you want both diagrams together? Yes=(Y),No=(N)')
  if (substr(A,1,1)=='Y'){
  x11()
  par(mfrow=c(1,2))
  options(scipen = 100)
  D=read.csv('BTDD_Template.csv')
  Th=D[,16]
  Ta=D[,15]
  Nb=D[,13]
  Yb=D[,11]
  ### Ta-Yb - Th-Yb ###
  plot(Ta/Yb, Th/Yb,pch=2,col='red',xlab=c(expression(bold((Ta/Yb)))),ylab=c(expression(bold((Th/Yb)))),xlim=c(0.01,10),ylim=c(0.01,100),axes=T, log ="xy");
  lines(c(0.02,10),c(0.01,4),lwd=1);
  lines(c(0.01,9),c(0.025,11),lwd=1);
  points(0.03,0.035,pch=15,col="black") #NMORB
  points(0.2,0.25,pch=15,col="black") #EMORB
  points(2,2,pch=15,col="black") #OIB
  text(0.03,0.025,'N-MORB')
  text(0.2,0.15,'E-MORB')
  text(2,1.5,'OIB')
  ### Nb-Yb - Th-Yb ###
  plot(Nb/Yb, Th/Yb,pch=2,col='red',xlab=c(expression(bold((Nb/Yb)))),ylab=c(expression(bold((Th/Yb)))),xlim=c(0.1,100),ylim=c(0.01,10),axes=T, log ="xy");
  lines(c(0.3,100),c(0.01,4),lwd=1);
  lines(c(0.15,100),c(0.01,10),lwd=1);
  points(0.8,0.04,pch=15,col="black") #NMORB
  points(5,0.3,pch=15,col="black") #EMORB
  points(35,2,pch=15,col="black") #OIB
  text(0.8,0.035,'N-MORB')
  text(5,0.25,'E-MORB')
  text(35,1,'OIB')
  }else if (A=='N'){
    D=read.csv('BTDD_Template.csv')
    Th=D[,16]
    Ta=D[,15]
    Nb=D[,13]
    Yb=D[,11]
    ### Ta-Yb - Th-Yb ###
    plot(Ta/Yb, Th/Yb,pch=2,col='red',xlab=c(expression(bold((Ta/Yb)))),ylab=c(expression(bold((Th/Yb)))),xlim=c(0.01,10),ylim=c(0.01,100),axes=T, log ="xy");
    lines(c(0.02,10),c(0.01,4),lwd=1);
    lines(c(0.01,9),c(0.025,11),lwd=1);
    points(0.03,0.035,pch=15,col="black") #NMORB
    points(0.2,0.25,pch=15,col="black") #EMORB
    points(2,2,pch=15,col="black") #OIB
    text(0.03,0.025,'N-MORB')
    text(0.2,0.15,'E-MORB')
    text(2,1.5,'OIB')
    ### Nb-Yb - Th-Yb ###
    plot(Nb/Yb, Th/Yb,pch=2,col='red',xlab=c(expression(bold((Nb/Yb)))),ylab=c(expression(bold((Th/Yb)))),xlim=c(0.1,100),ylim=c(0.01,10),axes=T, log ="xy");
    lines(c(0.3,100),c(0.01,4),lwd=1);
    lines(c(0.15,100),c(0.01,10),lwd=1);
    points(0.8,0.04,pch=15,col="black") #NMORB
    points(5,0.3,pch=15,col="black") #EMORB
    points(35,2,pch=15,col="black") #OIB
    text(0.8,0.035,'N-MORB')
    text(5,0.25,'E-MORB')
    text(35,1,'OIB')
  }
  B=readline('Did you want to generate a report with the ratios values? Yes=(Y),No=(N)')
  if (B=='Y'){
    X=D[,2]
    x=D[,1] ### Colocar la posici?n de la muestra
    Ta_Yb=Ta/Yb
    Nb_Yb=Nb/Yb
    Th_Yb=Th/Yb
    fa=data.frame(D,X,Ta_Yb,Nb_Yb,Th_Yb)
    write.csv(fa,file='Report_Pearce_2008.csv',row.names=T)
    print('Thanks for plotting with us ! not forget to follow us in www.platicandodelatierra.com')
  }else if (B=='N'){
    b=print('Thanks, I invite you to generate more diagrams at www.platicandodelatierra.com ')
  }
}