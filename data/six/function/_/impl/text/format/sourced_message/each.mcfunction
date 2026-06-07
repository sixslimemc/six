# IMPL > six : text/format/sourced_message
# each
#--------------------
# ./main
#--------------------
# forward iter

data modify storage six:out sourced_message.result.extra append value {text:"\n ", extra:[{text:""}]}
data modify storage six:out sourced_message.result.extra[-1].extra[0] set from storage six:in sourced_message.lines[0]

data remove storage six:in sourced_message.lines[0]
execute if data storage six:in sourced_message.lines[0] run function six:_/impl/text/format/sourced_message/each