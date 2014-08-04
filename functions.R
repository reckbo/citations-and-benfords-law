library(tools) 
library(ggplot2)

firstdigit <- function(int) {
    as.integer(substring(int, 1, 1))
}

benford <- function(x) {
   log10(1 + 1/x) 
}

citations <- function (csv) {
    y <- read.csv(csv)
    return(y$Cites)
}

digits <- function(vec)  {
    Filter(function(x) x > 0, firstdigit(vec))
}

make_plot <- function(csv) {
    cites <- citations(csv)
    d <- digits(cites)
    df <- data.frame(digits=d)
    basename <- file_path_sans_ext(csv)
    ggplot(df, aes(x=digits)) + 
    geom_histogram(aes(y=..density..)) + 
    scale_x_discrete(limits=1:9) + 
    scale_y_continuous(limits=c(0,0.4)) + 
    stat_function(fun=benford, colour='red') +
    xlab("First digit of citations") +
    ylab("Normalized count") +
    ggtitle(gsub("_", " ", basename))
}

save_plot <- function(g) {
    filename <- gsub(" ", "_", g$labels$title)
    ggsave(filename=paste0(filename, '.png'), plot=g, h=7, w=7, dpi=100)
}

generate_plot <- function(csv) {
    save_plot(make_plot(csv))
}
