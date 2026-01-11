# IMPL > six:player/get_next_ammo
# checks/inventory/add_result

$data modify storage six:out get_next_ammo.result append value {item:{}, amount:0, slot_path:"container.$(Slot)"}
data modify storage six:out get_next_ammo.result[-1].item set from storage six:_ v.get_next_ammo.this_item

execute store result score *x _six run data get storage six:_ v.get_next_ammo.this_item.count
execute if score *x _six > *get_next_ammo.remaining _six run scoreboard players operation *x _six = *get_next_ammo.remaining _six

execute store result storage six:out get_next_ammo.result[-1].amount int 1 run scoreboard players get *x _six

scoreboard players operation *get_next_ammo.remaining _six -= *x _six
