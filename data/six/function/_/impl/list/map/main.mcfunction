#> six:_/impl/list/map/main
# ^ T
# ^ R
#--------------------
# -> list[]: ^T
# -> transform: Lambda<^T, ^R>
#--------------------
# <- result[]: ^R
#--------------------
# 
#--------------------
# 1.
#--------------------

data modify storage six:_ impl.map.list set from storage six:in map.items

data modify storage six:_ impl.map.macro set from storage six:in map.transform
data modify storage six:_ impl.map.macro.in_loc set from storage six:in map.transform.in
execute unless data storage six:_ impl.map.macro.pre_run run data modify storage six:_ impl.map.macro.pre_run set from storage six:_ const.empty_command_fill
execute unless data storage six:_ impl.map.macro.command run data modify storage six:_ impl.map.macro.command set from storage six:_ const.empty_command_fill

# DEBUG:
tellraw @a [": ", {'storage':'six:_', 'nbt':'impl.map.macro'}]
execute if data storage six:_ impl.map.list[0] run function six:_/impl/list/map/each
