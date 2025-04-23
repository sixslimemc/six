#> six:_/sc/load
#--------------------
# ENTRYPOINT :: LOAD
#--------------------

scoreboard objectives add _six dummy

# consts
data remove storage six:data const

data modify storage six:data const.empty_command_fill set value "execute if score _ _ matches 0"