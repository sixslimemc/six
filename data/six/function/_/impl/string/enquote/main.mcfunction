# IMPL > six : string/enquote

data modify storage six:in stringify.object.v set from storage six:in enquote.string
function six:string/stringify

# y = end_index;
execute store result score *y _six run data get storage six:out stringify.result
# -1 to exclude '}'
scoreboard players remove *y _six 1

# start index is 3 to exclude '{v:'
data merge storage six:_ {v:{enquote:{start_index:3}}}
execute store result storage six:_ v.enquote.end_index int 1 run scoreboard players get *y _six

function six:_/impl/string/enquote/get_quoted with storage six:_ v.enquote