#> six : text/format/sourced_message

data remove storage six:out sourced_message

function six:_/impl/text/format/sourced_message/main

data remove storage six:_ v.sourced_message
data remove storage six:in sourced_message
scoreboard players reset *sourced_message.multiline _six

return 1