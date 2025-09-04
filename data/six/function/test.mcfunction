
data modify storage six:in kvpairs.compound set from entity @s SelectedItem
# DEBUG:
tellraw @a ["IN", {'storage':'six:in', 'nbt':'kvpairs.compound'}]
function six:compound/kvpairs
tellraw @a ["OUT", {'storage':'six:out', 'nbt':'kvpairs.result'}]
