# IMPL > six : str/stringify
# buffer/loop
#--------------------
# ../main
#--------------------

data modify storage six:_ v.stringify.this_token set from storage six:_ v.stringify.buffer[-1]
data remove storage six:_ v.stringify.buffer[-1]

function six:_/impl/str/stringify/buffer/loop.1

execute if data storage six:_ v.stringify.buffer[0] run function six:_/impl/str/stringify/buffer/loop