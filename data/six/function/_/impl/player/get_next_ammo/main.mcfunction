# IMPL > six:player/get_next_ammo
# main

execute store result score *get_next_ammo.max_amount _six run data get storage six:in get_next_ammo.amount
execute if score *get_next_ammo.max_amount _six matches ..0 run return 0

scoreboard players operation *get_next_ammo.remaining _six = *get_next_ammo.max_amount _six

data modify storage six:_ v.get_next_ammo.items set value []
data modify storage six:_ v.get_next_ammo.type_map set value {bow:["minecraft:arrow", "minecraft:spectral_arrow", "minecraft:tipped_arrow"], crossbow:["minecraft:arrow", "minecraft:spectral_arrow", "minecraft:tipped_arrow", "minecraft:firework_rocket"]}

execute if data storage six:in get_next_ammo.types[0] run function six:_/impl/player/get_next_ammo/types/each

data modify storage six:_ v.get_next_ammo.items append from storage six:in get_next_ammo.custom_items[]

execute if data storage six:_ v.get_next_ammo.items[0] run function six:_/impl/player/get_next_ammo/items/each

# mainhand:
function six:_/impl/player/get_next_ammo/checks/mainhand
execute if score *get_next_ammo.remaining _six matches ..0 run return run scoreboard players get *get_next_ammo.max_amount _six

# offhand:
function six:_/impl/player/get_next_ammo/checks/offhand
execute if score *get_next_ammo.remaining _six matches ..0 run return run scoreboard players get *get_next_ammo.max_amount _six

# inventory:
data modify storage six:_ v.get_next_ammo.inventory set from entity @s Inventory
execute if data storage six:_ v.get_next_ammo.inventory[0] run function six:_/impl/player/get_next_ammo/checks/inventory/each

return run scoreboard players operation *get_next_ammo.max_amount _six -= *get_next_ammo.remaining _six
