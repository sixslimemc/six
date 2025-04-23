
data modify storage six:in distinct.items set value [{a:1, b:1}, {a:2, b:1}, {a:3, b:1}, {a:1, b:2}, {a:1, b:3}, {a:2, b:4}]
data modify storage six:in distinct.by set value {command:'function six:compound/partial', in:'six:in partial.compound', out:'six:out partial.result', pre_run:'data modify storage six:in partial.get set value {only:["a"]}'}
data modify storage six:in distinct.preserve_order set value true
function six:set/distinct

# DEBUG:
tellraw @a ["OUT: ", {'storage':'six:out', 'nbt':'distinct.result'}]