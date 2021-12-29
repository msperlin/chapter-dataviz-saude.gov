fmt_cash <- function(x) {
  require(scales)
  
  x_formatted <- dollar(x,
                        prefix = 'R$ ',
                        decimal.mark = ',',
                        big.mark = '.',
                        largest_with_cents = Inf)
  
  return(x_formatted)
}


fmt_percent <- function(x) {
  require(scales)
  
  x.formatted <- percent(x,
                         accuracy = 0.01,
                         decimal.mark = ',',
                         big.mark = '.')
  
  return(x.formatted)
}

fmt_date <- function(x) {
  
  x <- as.Date(x)
  x.formatted <- format(x, '%d/%m/%Y')
  
  return(x.formatted)
}

my.kable <- function(tbl,
                     my.tab.caption = 'MISSING CAPTION',
                     do.scale.down = TRUE) {
  require(knitr)
  require(kableExtra)
  require(tidyverse)
  
  if (do.scale.down) {
    my.latex.options <- c("scale_down", 'hold_position')
  } else {
    my.latex.options <- c('HOLD_position')
  }
  
  tab <- kable(tbl,
               align = 'l',
               caption = my.tab.caption,
               booktabs=TRUE,
               digits = 4) %>%
    kable_styling(latex_options = my.latex.options,
                  position = 'center')
  
  return(tab)
}

