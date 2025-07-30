rm(list=ls())  #borra todas las variables que esten asignados
graphics.off() #cierra todas las graficas 
##### Diagramas de discriminaci?n tect?nica  ###
readline('Welcome ! lets generate some diagrams (please push enter to continue)')
Di=readline('Please type Pearce_etal_1984')
if(Di=='Pearce_etal_1984'){
  A=readline('Did you want both diagrams together? Yes=(Y),No=(N)')
  if (substr(A,1,1)=='Y'){
    x11()
    par(mfrow=c(2,2))
    D=read.csv('BTDD_Template.csv')
    Y=D[,17]
    Nb=D[,13]
    Yb=D[,11]
    Ta=D[,15]
    Rb=D[,14]
    ### Y - Nb ###
    x1=c(1,25,50,1000,50,40)
    y1=c(2000,25,10,100,10,1)
    plot(Y,Nb,pch=2,col='red',xlab=c(expression(bold((Y)))),ylab=c(expression(bold((Nb)))),xlim=c(1,1000),ylim=c(1,1000),axes=T, log ="xy");
    text(50,500,'Within-plate granites')
    text(5,10,'Volcanic arc and syn')
    text(5,7,'collision granites')
    text(250,9,'Ocean ridge granite')
    lines(x1,y1,lwd=1);
    ### Yb-Ta ###
    x2=c(0.55,3,0.1,3,5,100,5,5)
    y2=c(20,2,0.35,2,1,7,1,0.05)
    plot(Yb,Ta,pch=2,col='red',xlab=c(expression(bold((Yb)))),ylab=c(expression(bold((Ta)))),xlim=c(0.1,100),ylim=c(0.05,50),axes=T, log ="xy");
    text(0.3,2.5,'Syn-collision granites')
    text(0.3,0.15,'Volcanic arc granites')
    text(25,0.1,'Ocean ridge granite')
    text(5,25,'Within-plate granites')
    lines(x2,y2,lwd=1);
    ### Nb+Y - Rb ###
    x3=c(2,55,400,55,51,50,51,2000)
    y3=c(80,300,2000,300,5.8,1,5.8,400)
    plot(Nb+Y,Rb,pch=2,col='red',xlab=c(expression(bold((Nb+Y)))),ylab=c(expression(bold((Rb)))),xlim=c(1,10000),ylim=c(1,10000),axes=T, log ="xy");
    text(250,100,'WPG')
    text(10,1150,'Syn-collision granites')
    text(10,10,'Volcanic arc granites')
    text(1000,10,'Ocean ridge granite')
    lines(x3,y3,lwd=1)
  }else if (A=='N'){
    D=read.csv('BTDD_Template.csv')
    Y=D[,17]
    Nb=D[,13]
    Yb=D[,11]
    Ta=D[,15]
    Rb=D[,14]
    ### Y - Nb ###
    x1=c(1,25,50,1000,50,40)
    y1=c(2000,25,10,100,10,1)
    plot(Y,Nb,pch=2,col='red',xlab=c(expression(bold((Y)))),ylab=c(expression(bold((Nb)))),xlim=c(1,1000),ylim=c(1,1000),axes=T, log ="xy");
    text(50,500,'Within-plate granites')
    text(5,10,'Volcanic arc and syn')
    text(5,7,'collision granites')
    text(250,9,'Ocean ridge granite')
    lines(x1,y1,lwd=1);
    ### Yb-Ta ###
    x2=c(0.55,3,0.1,3,5,100,5,5)
    y2=c(20,2,0.35,2,1,7,1,0.05)
    plot(Yb,Ta,pch=2,col='red',xlab=c(expression(bold((Yb)))),ylab=c(expression(bold((Ta)))),xlim=c(0.1,100),ylim=c(0.05,50),axes=T, log ="xy");
    text(0.3,2.5,'Syn-collision granites')
    text(0.3,0.15,'Volcanic arc granites')
    text(25,0.1,'Ocean ridge granite')
    text(5,25,'Within-plate granites')
    lines(x2,y2,lwd=1);
    ### Nb+Y - Rb ###
    x3=c(2,55,400,55,51,50,51,2000)
    y3=c(80,300,2000,300,5.8,1,5.8,400)
    plot(Nb+Y,Rb,pch=2,col='red',xlab=c(expression(bold((Nb+Y)))),ylab=c(expression(bold((Rb)))),xlim=c(1,10000),ylim=c(1,10000),axes=T, log ="xy");
    text(250,100,'WPG')
    text(10,1150,'Syn-collision granites')
    text(10,10,'Volcanic arc granites')
    text(1000,10,'Ocean ridge granite')
    lines(x3,y3,lwd=1)
  }
  B=readline('Did you want to generate a report with the ratios values? Yes=(Y),No=(N)')
  if (B=='Y'){
    X=D[,2]
    x=D[,1] ### Colocar la posici?n de la muestra
    Nb_Y=Nb+Y
    fa=data.frame(D,X,Nb_Y)
    write.csv(fa,file='Report_Pearce_etal_1984.csv',row.names=T)
    print('Thanks for plotting with us ! not forget to follow us in www.platicandodelatierra.com')
  }else if (B=='N'){
    b=print('Thanks, I invite you to generate more diagrams at www.platicandodelatierra.com ')
  }
}