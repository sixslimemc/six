#> six : decimal/sign
#--------------------
# -> number: number
#--------------------
# .
#--------------------
# TODO: description
#--------------------
# 1: <number> is positive.
# -1: <number> is negative.
# 0: <number> is 0.
#--------------------

data remove storage six:out sign

execute store result score *x _six summon marker run function six:_/impl/decimal/sign/main with storage six:in sign

data remove storage six:in sign

return run scoreboard players get *x _six