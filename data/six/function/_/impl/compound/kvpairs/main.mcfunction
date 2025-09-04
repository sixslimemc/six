# IMPL > six:compound/kvpairs
# main

data modify storage six:out kvpairs.result set value []

data modify storage six:in stringify.object set from storage six:in kvpairs.compound
function six:string/stringify
data modify storage six:_ v.kvpairs.fullstring set from storage six:out stringify.result

# skip first '{'
data modify storage six:_ v.kvpairs.buffer set string storage six:_ v.kvpairs.fullstring 1

execute store result score *kvpairs.buflength _six run data get storage six:_ v.kvpairs.buffer
scoreboard players remove *kvpairs.buflength _six 1

execute if score *kvpairs.buflength _six matches 1.. run function six:_/impl/compound/kvpairs/bufloop