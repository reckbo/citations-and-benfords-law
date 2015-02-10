load'csv'
load'plot'

csvs=: {."1 fdir '*.csv'

NB. helper functions
readcitescol=: >@:(".each)@:}.@:({."1)@readcsv
firstdigit=: {.@:(10&#.^:_1) "0
freq=:#/.~
dropzero=:}.
normalize=: (% +/)

NB. Make histogram for each csv
hist=: > dropzero@:normalize@:freq@:sort@:firstdigit@:readcitescol each csvs

NB. Define Benford distribution function
benford=: (10&^.)@:(1 + %)

NB. Make the plot
key=: 'key Benford,', ','joinstring csvs  NB. the legend
xlabel=: 'xlabel ', ": >: i.9  NB. labels 1 to 9
title=: 'title Benford Distribution for Publication Citations'
(';'joinstring key;xlabel;title) plot (benford >:i.9),hist

