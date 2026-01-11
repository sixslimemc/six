# IMPL > six:player/get_next_ammo
# checks/offhand

data modify storage six:_ v.get_next_ammo.check.offhand set from entity @s equipment.offhand
execute unless data storage six:_ v.get_next_ammo.check.offhand run return 0

execute store success score *x _six run function six:_/impl/player/get_next_ammo/check_item with storage six:_ v.get_next_ammo.check.offhand
execute if score *x _six matches 0 run return 0

data modify storage six:out get_next_ammo.result append value {item:{id:"minecraft:slime_ball"}, amount:0, slot_path:"weapon.offhand"}
data modify storage six:out get_next_ammo.result[-1].item set from storage six:_ v.get_next_ammo.check.offhand

execute store result score *x _six run data get storage six:_ v.get_next_ammo.check.offhand.count
execute if score *x _six > *get_next_ammo.remaining _six run scoreboard players operation *x _six = *get_next_ammo.remaining _six

execute store result storage six:out get_next_ammo.result[-1].amount int 1 run scoreboard players get *x _six

scoreboard players operation *get_next_ammo.remaining _six -= *x _six