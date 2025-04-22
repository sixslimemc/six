#> six:_/sc/load
#--------------------
# ENTRYPOINT :: LOAD
#--------------------

scoreboard objectives add _six dummy

# consts
data remove storage six:_ const

data modify storage six:_ const.empty_command_fill set value "execute if score _ _ matches 0"