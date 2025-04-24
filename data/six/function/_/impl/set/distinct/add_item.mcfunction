#> six:_/impl/set/distinct/add_item
#--------------------
# ./each
# ./each_preserve
#--------------------

data modify storage six:_ v.distinct.seen append value {}
data modify storage six:_ v.distinct.seen[-1].value set from storage six:_ v.distinct.this_compare

data modify storage six:out distinct.result append from storage six:_ v.distinct.this_item
