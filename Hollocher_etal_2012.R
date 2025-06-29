rm(list=ls())  #borra todas las variables que esten asignados
graphics.off() #cierra todas las graficas 
##### Diagramas de discriminaci?n tect?nica  ###
readline('Welcome ! lets generate some diagrams (please push enter to continue)')
Di=readline('Please type Hollocher_etal_2012')
if(Di=='Hollocher_etal_2012'){
  A=readline('Did you want both diagrams together? Yes=(Y),No=(N)')
  if (substr(A,1,1)=='Y'){
    x11()
    par(mfrow=c(1,2))
    D=read.csv('BTDD_Template.csv')
    La=D[,9]
    Nb=D[,13]
    Th=D[,16]
    Yb=D[,11]
    ### La-Yb - Nb-La ###
    x1=c(0.4,80,10,10,22,10,10,1.75,7.5,1.75,2.44,6)
    y1=c(0.5,0.95,0.739,0.25,0.09,0.25,0.739,0.598,0.09,0.598,0.622,3)
    plot(La/Yb,Nb/La,pch=2,col='red',xlab=c(expression(bold((La/Yb)))),ylab=c(expression(bold((Nb/La)))),xlim=c(0.4,80),ylim=c(0.1,3),axes=T, log ="xy");
    text(1,1.5,'Major ocean ridge')
    text(10,1.5,'OIB')
    text(5.8,0.35,'Continental')
    text(5.8,0.3,'arcs')
    text(1,0.2,'Oceanic arcs')
    text(35,0.25,'Alkaline arcs')
    lines(x1,y1,lwd=1);
    ### La-Yb - Th-Nb ###
    x2=c(0.4,7.15,80,7.15,20,7.15,1.9,5.5,1.9,7.15,1.5)
    y2=c(0.095,0.13,0.4,0.13,5,0.13,0.113,5,0.113,0.13,0.01)
    plot(La/Yb, Th/Nb,pch=2,col='red',xlab=c(expression(bold((La/Yb)))),ylab=c(expression(bold((Th/Nb)))),xlim=c(0.4,80),ylim=c(0.01,5),axes=T, log ="xy");
    text(1,1,'Oceanic arcs')
    text(20,0.04,'OIB')
    text(7,2.5,'Continental')
    text(7,2,'arcs')
    text(0.8,0.05,'MORB')
    text(25,1,'Alkaline arcs')
    lines(x2,y2,lwd=1);
  }else if (A=='N'){
    D=read.csv('BTDD_Template.csv')
    La=D[,9]
    Nb=D[,13]
    Th=D[,16]
    Yb=D[,11]
    ### La-Yb - Nb-La ###
    x1=c(0.4,80,10,10,22,10,10,1.75,7.5,1.75,2.44,6)
    y1=c(0.5,0.95,0.739,0.25,0.09,0.25,0.739,0.598,0.09,0.598,0.622,3)
    plot(La/Yb,Nb/La,pch=2,col='red',xlab=c(expression(bold((La/Yb)))),ylab=c(expression(bold((Nb/La)))),xlim=c(0.4,80),ylim=c(0.1,3),axes=T, log ="xy");
    text(1,1.5,'Major ocean ridge')
    text(10,1.5,'OIB')
    text(5.8,0.35,'Continental')
    text(5.8,0.3,'arcs')
    text(1,0.2,'Oceanic arcs')
    text(35,0.25,'Alkaline arcs')
    lines(x1,y1,lwd=1);
    ### La-Yb - Th-Nb ###
    x2=c(0.4,7.15,80,7.15,20,7.15,1.9,5.5,1.9,7.15,1.5)
    y2=c(0.095,0.13,0.4,0.13,5,0.13,0.113,5,0.113,0.13,0.01)
    plot(La/Yb, Th/Nb,pch=2,col='red',xlab=c(expression(bold((La/Yb)))),ylab=c(expression(bold((Th/Nb)))),xlim=c(0.4,80),ylim=c(0.01,5),axes=T, log ="xy");
    text(1,1,'Oceanic arcs')
    text(20,0.04,'OIB')
    text(7,2.5,'Continental')
    text(7,2,'arcs')
    text(0.8,0.05,'MORB')
    text(25,1,'Alkaline arcs')
    lines(x2,y2,lwd=1);
  }
  B=readline('Did you want to generate a report with the ratios values? Yes=(Y),No=(N)')
  if (B=='Y'){
    X=D[,2]
    x=D[,1] ### Colocar la posici?n de la muestra
    La_Yb=La/Yb
    Nb_La=Nb/La
    Th_Nb=Th/Nb
    fa=data.frame(D,X,La_Yb,Nb_La,Th_Nb)
    write.csv(fa,file='Report_Hollocher_etal_2012.csv',row.names=T)
    print('Thanks for plotting with us ! not forget to follow us in www.platicandodelatierra.com')
  }else if (B=='N'){
    b=print('Thanks, I invite you to generate more diagrams at www.platicandodelatierra.com ')
  }
}