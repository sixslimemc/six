#> six : vector/subtract
#--------------------
# -> a: spaceVector
# -> b: spaceVector
#--------------------
# <- result: spaceVector
#--------------------
# TODO: description
#--------------------
# 1.
#--------------------

# literal shorthand for 'negate' on <b> and then 'add'

data remove storage six:out subtract

data modify storage six:in negate.vector set from storage six:in subtract.b
function six:vector/negate

data modify storage six:in add.a set from storage six:in subtract.a
data modify storage six:in add.b set from storage six:out negate.result
function six:vector/add

data modify storage six:out subtract.result set from storage six:out add.result

data remove storage six:in subtract

return 1