# IMPL > six : str/stringify
# buffer/loop.1

# nothing if token is empty string:
execute if data storage six:_ v.stringify{this_token:""} run return 0

# break if json token:
execute if data storage six:_ v.stringify.this_token.text run return run function six:_/impl/str/stringify/buffer/break_token

# add raw string to {..concat}:
data modify storage six:_ v.stringify.concat prepend from storage six:_ v.stringify.this_token