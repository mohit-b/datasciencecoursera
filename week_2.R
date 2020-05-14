add2<-function(x,y){
  x+y
}

abov<-function(x){
  use<-x>10
  x[use]
}

abov2<-function(x,n){
  use<-x>n
  x[use]
}

abov3<-function(x,n=10){
  use<-x>n
  x[use]
}