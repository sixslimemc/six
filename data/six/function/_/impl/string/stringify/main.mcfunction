# IMPL > six : string/stringify
# main AS [text display]

data merge entity @s {text:{storage:'slimecore:in', nbt:'stringify.object'}}
data modify storage slimecore:out stringify.result set from entity @s text
kill @s