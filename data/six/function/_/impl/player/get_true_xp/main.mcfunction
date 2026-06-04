# IMPL > six:player/get_true_xp
# main

# get *.level and *.points:
execute store result score *get_true_xp.level _six run xp query @s levels
execute store result score *get_true_xp.points _six run xp query @s points

# return if xp is more than handleable:
execute if score *get_true_xp.level _six matches 21864.. run return -1
execute if score *get_true_xp.level _six matches 21863 if score *get_true_xp.points _six matches 72475.. run return -1

# get *.level_squared
scoreboard players operation *get_true_xp.level_squared _six = *get_true_xp.level _six
scoreboard players operation *get_true_xp.level_squared _six *= *get_true_xp.level _six

# get *.level_half
scoreboard players operation *get_true_xp.level_half _six = *get_true_xp.level _six
scoreboard players operation *get_true_xp.level_half _six /= *2 _six

# get *.level_sqhalf
scoreboard players operation *get_true_xp.level_sqhalf _six = *get_true_xp.level_squared _six
scoreboard players operation *get_true_xp.level_sqhalf _six /= *2 _six

execute if score *get_true_xp.level _six matches ..16 run return run function six:_/impl/player/get_true_xp/to_16
execute if score *get_true_xp.level _six matches ..31 run return run function six:_/impl/player/get_true_xp/to_31
return run function six:_/impl/player/get_true_xp/32_plus
