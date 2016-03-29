myPlot <- function(mu) {
  x <- c(0.18, -1.54, 0.42, 0.95)
  w <- c(2, 1, 3, 1)
  plot(
    x, 
    w,
    pch = 21, col = "black", bg = "lightblue",
    cex = .15 * freqData$freq, 
    xlab = "x", 
    ylab = "w"
  )
  res_squared <- sum(w * (x - mu)^2)
  title(paste("mu = ", mu, "residual square = ", round(res_squared, 3)))
}
manipulate(myPlot(mu), mu = manipulate::slider(0.0025, 1.077, step = 0.001))