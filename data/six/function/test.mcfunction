
data merge storage six:in {get_next_ammo:{amount:10, types:["crossbow"]}}
function six:player/get_next_ammo
# DEBUG:
tellraw @a ["out: ", {'storage':'six:out', 'nbt':'get_next_ammo.result'}]