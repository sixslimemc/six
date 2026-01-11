# IMPL > six:player/get_next_ammo
# types/each

data modify storage six:_ v.get_next_ammo.this_type set from storage six:in get_next_ammo.types[-1]

execute if data storage six:_ v.get_next_ammo{this_type:'bow'} run data modify storage six:_ v.get_next_ammo.items append from storage six:_ v.get_next_ammo.type_map.bow[]
execute if data storage six:_ v.get_next_ammo{this_type:'crossbow'} run data modify storage six:_ v.get_next_ammo.items append from storage six:_ v.get_next_ammo.type_map.crossbow[]

data remove storage six:in get_next_ammo.types[-1]
execute if data storage six:in get_next_ammo.types[0] run function six:_/impl/player/get_next_ammo/types/each