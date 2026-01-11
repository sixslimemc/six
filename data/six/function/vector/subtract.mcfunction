#> six : vector/subtract

# literal shorthand for 'negate' on <b> and then 'sum'

data remove storage six:out subtract

data modify storage six:in negate.vector set from storage six:in subtract.b
function six:vector/negate

data modify storage six:in sum.vectors append from storage six:in subtract.a
data modify storage six:in sum.vectors append from storage six:out negate.result
function six:vector/sum

data modify storage six:out subtract.result set from storage six:out sum.result

data remove storage six:in subtract

return 1