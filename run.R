library(gridExtra)
source('functions.R')

p <- lapply(list.files(pattern="\\.csv$"), make_plot)
g <- do.call('arrangeGrob', c(p, ncol=3))
ggsave(filename='benford_citations_R.png', plot=g, h=10, w=10, dpi=150)
