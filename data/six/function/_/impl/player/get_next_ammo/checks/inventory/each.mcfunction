# IMPL > six:player/get_next_ammo
# checks/inventory/each

data modify storage six:_ v.get_next_ammo.this_item set from storage six:_ v.get_next_ammo.inventory[0]

execute store success score *x _six run function six:_/impl/player/get_next_ammo/check_item with storage six:_ v.get_next_ammo.this_item

execute if score *x _six matches 1 run function six:_/impl/player/get_next_ammo/checks/inventory/add_result with storage six:_ v.get_next_ammo.this_item
execute if score *get_next_ammo.remaining _six matches ..0 run return 1

data remove storage six:_ v.get_next_ammo.inventory[0]
execute if data storage six:_ v.get_next_ammo.inventory[0] run function six:_/impl/player/get_next_ammo/checks/inventory/each