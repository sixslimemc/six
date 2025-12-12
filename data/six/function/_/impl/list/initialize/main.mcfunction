# IMPL > six:_/impl/list/initialize
# main

execute store result score *initialize.left _six run data get storage six:in initialize.length
execute if score *initialize.left _six matches 1.. run function six:_/impl/list/initialize/each