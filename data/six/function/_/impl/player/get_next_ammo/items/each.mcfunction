# IMPL > six:player/get_next_ammo
# items/each

data modify storage six:_ v.get_next_ammo.this_item set from storage six:_ v.get_next_ammo.items[-1]

function six:_/impl/player/get_next_ammo/items/set_map with storage six:_ v.get_next_ammo

data remove storage six:_ v.get_next_ammo.items[-1]
execute if data storage six:_ v.get_next_ammo.items[0] run function six:_/impl/player/get_next_ammo/items/each