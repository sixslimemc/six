# IMPL > six:struc/kvpairs
# bufloop
#--------------------
# ./main
#--------------------

data modify storage six:_ v.kvpairs.this_token set from storage six:_ v.kvpairs.buffer[-1]

function six:_/impl/struc/kvpairs/bufloop.1

data remove storage six:_ v.kvpairs.buffer[-1]
execute if data storage six:_ v.kvpairs.buffer[0] run function six:_/impl/struc/kvpairs/bufloop