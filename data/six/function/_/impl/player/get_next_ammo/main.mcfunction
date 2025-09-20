# IMPL > six:player/get_next_ammo
# main

execute store result score *get_next_ammo.max_count _six run data get storage six:in get_next_ammo.amount

execute if score *get_next_ammo.max_count _six matches ..0 run return 0

data merge storage six:_ {v:{get_next_ammo:{items:[], type_map:{bow:["minecraft:arrow", "minecraft:spectral_arrow", "minecraft:tipped_arrow"], crossbow:["minecraft:arrow", "minecraft:spectral_arrow", "minecraft:tipped_arrow", "minecraft:firework_rocket"]}}}}
execute if data storage six:in get_next_ammo.types[0] run function six:_/impl/player/get_next_ammo/types/each

data modify storage six:_ v.get_next_ammo.items append from storage six:in get_next_ammo.custom_items[]

execute if data storage six:_ v.get_next_ammo.items[0] run function six:_/impl/player/get_next_ammo/items/each
