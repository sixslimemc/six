
data modify storage six:in kvpairs.compound set from entity @s SelectedItem.components."minecraft:enchantments"
# DEBUG:
tellraw @a ["IN", {'storage':'six:in', 'nbt':'kvpairs.compound'}]
function six:compound/kvpairs
tellraw @a ["OUT", {'storage':'six:out', 'nbt':'kvpairs.result'}]
