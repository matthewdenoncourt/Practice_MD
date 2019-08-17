#contrived function to estimate Pi

estPi <- function(numOfDarts){
  
  dx <- runif(numOfDarts, min=-1,max=1)
  dy <- runif(numOfDarts, min=-1,max=1)
  theta <- seq(0,2*pi,length.out = 100)
  ix <- which((dx^2+dy^2)<=1)
  # Display
  # plot(cos(theta), sin(theta), type='l', lwd=3)
  # points(dx[ix], dy[ix], col='green', pch=20)
  # points(dx[-ix], dy[-ix], col='red', pch=20)
  return(4*(length(ix)/numOfDarts))
}
# Conflict Comment
estPi(darts = 1000)
estPi(darts = 10000)
# Added some tests for you. Michelle Koop.