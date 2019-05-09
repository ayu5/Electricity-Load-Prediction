get_legend<-function(myggplot){
  tmp <- ggplot_gtable(ggplot_build(myggplot))
  leg <- which(sapply(tmp$grobs, function(x) x$name) == "guide-box")
  legend <- tmp$grobs[[leg]]
  return(legend)
}

mae <- function(error)
{
  return(mean(abs(error)))
}

rmse <- function(error)
{
  return(sqrt(mean(error^2)))
}