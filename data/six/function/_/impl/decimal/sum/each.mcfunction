# IMPL > six : vector/sum
# each
#--------------------
# ./main AS [marker]
#--------------------

data modify storage six:_ v.sum.this_number set from storage six:in sum.numbers[-1]

function six:_/impl/decimal/sum/tp with storage six:_ v.sum

data remove storage six:in sum.numbers[-1]
execute if data storage six:in sum.numbers[0] run function six:_/impl/decimal/sum/each