#> six:_/impl/set/distinct/check_seen
#--------------------
# ./each
# ./each_preserve
#--------------------

data merge storage six:_ {impl:{distinct:{matches:[]}}}
$data modify storage six:_ impl.distinct.matches append from storage six:_ impl.distinct.seen[{value:$(this_compare)}].value

execute unless data storage six:_ impl.distinct.matches[0] run return 0

scoreboard players set *distinct.equal _six 0
execute if data storage six:_ impl.distinct.matches[0] run function six:_/impl/set/distinct/matches/each

execute if score *distinct.equal _six matches 1 run return 1

return 0
