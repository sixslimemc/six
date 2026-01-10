# IMPL > six : str/stringify
# main AS [text display]

data merge entity @s {text:{storage:'six:in', nbt:'stringify.object'}}
data modify storage six:out stringify.result set from entity @s text
kill @s