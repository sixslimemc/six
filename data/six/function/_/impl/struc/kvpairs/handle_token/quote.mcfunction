# IMPL > six : struc/kvpairs
# handle_token/quote
#--------------------
# ./bufloop.1
#--------------------

# remove the closing quote and the string element (closing quote will be removed on iter)
data remove storage six:_ v.kvpairs.buffer[-1]
data remove storage six:_ v.kvpairs.buffer[-1]