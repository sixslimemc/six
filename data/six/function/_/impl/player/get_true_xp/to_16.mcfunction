# IMPL > six:player/get_true_xp
# to_16
#--------------------
# ./main
#--------------------

# (6 * level) + (level^2) 

scoreboard players set *x _six 6
scoreboard players operation *x _six *= *get_true_xp.level _six
scoreboard players operation *x _six += *get_true_xp.level_squared _six

scoreboard players operation *x _six += *get_true_xp.points _six
return run scoreboard players get *x _six