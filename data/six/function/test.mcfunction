
data modify storage six:in kvpairs set value {compound:{test:"test_value","alr:bruh":{ok:1},"another\\\"":6}}
# DEBUG:
tellraw @a ["IN", {'storage':'six:in', 'nbt':'kvpairs.compound'}]
function six:compound/kvpairs
tellraw @a ["OUT", {'storage':'six:out', 'nbt':'kvpairs.result'}]
