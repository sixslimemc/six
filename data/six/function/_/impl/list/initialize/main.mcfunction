# IMPL > six:_/impl/list/initialize
# main

execute unless data storage six:in initialize.value run data modify storage six:in initialize.value set value {}
execute store result score *initialize.left _six run data get storage six:in initialize.length
execute if score *initialize.left _six matches 1.. run function six:_/impl/list/initialize/each