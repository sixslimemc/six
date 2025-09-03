# IMPL > six:compound/kvpairs
# get_quoted_key



data modify storage six:_ util.quote_index.string set from storage six:_ v.kvpairs.buffer
execute store result storage six:_ x.2 int 1 run function six:_/util/quote_index/main

data merge storage six:_ {x:{1:"data modify storage six:_ v.kvpairs.this_key set string six:_ v.kvpairs.buffer 1 "}}
function six:-/mline/2