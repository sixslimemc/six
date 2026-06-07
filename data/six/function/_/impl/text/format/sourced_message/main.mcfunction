# IMPL > six : text/format/sourced_message
# main

execute store success score *sourced_message.multiline _six if data storage six:in sourced_message.lines[1]

# header:
data modify storage six:out sourced_message.result set value {text:"", extra:[{text:"", color:gray, extra:[{text:"["}, {text:"SOURCE"}, {text:"]"}]}]}
data modify storage six:out sourced_message.result.extra[0].extra[1] set from storage six:in sourced_message.source

# single line:
execute if score *sourced_message.multiline _six matches 0 run return run function six:_/impl/text/format/sourced_message/single_line

# multiline header:
data modify storage six:out sourced_message.result.extra[0].extra append value {text:":"}

execute if data storage six:in sourced_message.lines[0] run function six:_/impl/text/format/sourced_message/each
