# IMPL > six:player/get_true_xp
# to_31
#--------------------
# ./main
#--------------------

# (2.5 * level^2) - (40.5 * level) + 360

scoreboard players set *x _six 2
scoreboard players operation *x _six *= *get_true_xp.level_squared _six
scoreboard players operation *x _six += *get_true_xp.level_sqhalf _six

scoreboard players set *y _six 40
scoreboard players operation *y _six *= *get_true_xp.level _six
scoreboard players operation *y _six += *get_true_xp.level_half _six

scoreboard players operation *x _six -= *y _six
scoreboard players add *x _six 360

scoreboard players operation *x _six += *get_true_xp.points _six
return run scoreboard players get *x _six