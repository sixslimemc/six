# IMPL > six : struc/kvpairs
# handle_token/keysep
#--------------------
# ./bufloop.1
#--------------------

# remove ':':
data remove storage six:_ v.kvpairs.buffer[-1]

data modify storage six:_ v.kvpairs.key_token set from storage six:_ v.kvpairs.buffer[-1]
data modify storage six:_ v.kvpairs.result_entry set value {key:"", key_quote_type:"'"}

# check if quoted key:
execute store success score *x _six if data storage six:_ v.kvpairs.kvpairs.key_token.extra[0]
execute if score *x _six matches 0 run data modify storage six:_ v.kvpairs.result_entry.key set from storage six:_ v.kvpairs.key_token
execute if score *x _six matches 1 run data modify storage six:_ v.kvpairs.result_entry.key set from storage six:_ v.kvpairs.key_token.extra[0]
execute if score *x _six matches 1 run data modify storage six:_ v.kvpairs.result_entry.key_quote_type set from storage six:_ v.kvpairs.key_token.text

function six:_/impl/struc/kvpairs/add_key with storage six:_ v.kvpairs.result_entry

# remove the key, "", and " ":
data remove storage six:_ v.kvpairs.buffer[-1]
data remove storage six:_ v.kvpairs.buffer[-1]
data remove storage six:_ v.kvpairs.buffer[-1]
