# IMPL > six:player/get_true_xp
# 32_plus
#--------------------
# ./main
#--------------------

# (4.5 * level^2) - (162.5 * level) + 2220

scoreboard players set *x _six 4
scoreboard players operation *x _six *= *get_true_xp.level_squared _six
scoreboard players operation *x _six += *get_true_xp.level_sqhalf _six

scoreboard players set *y _six 162
scoreboard players operation *y _six *= *get_true_xp.level _six
scoreboard players operation *y _six += *get_true_xp.level_half _six

scoreboard players operation *x _six -= *y _six
scoreboard players add *x _six 2220

scoreboard players operation *x _six += *get_true_xp.points _six
return run scoreboard players get *x _six