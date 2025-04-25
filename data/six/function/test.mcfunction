
data modify storage six:in distinct.items set value [{a:1, b:1}, {a:2, b:1}, {a:3, b:1}, {a:4, b:1}]
data modify storage six:_ var.test set value [{a:2, b:2}, {a:4, b:2}, {a:5, b:2}, {a:6, b:2}, {a:9, b:2}, {a:8, b:2}]
data modify storage six:in distinct.items append from storage six:_ var.test[]
data modify storage six:in distinct.ordered set value false
data modify storage six:in distinct.by set value {command:'function six:compound/partial', in:'six:in partial.compound', out:'six:out partial.result', pre_run:'data modify storage six:in partial.get set value {only:["a"]}'}
function six:set/distinct

# DEBUG:
tellraw @a ["OUT: ", {'storage':'six:out', 'nbt':'distinct'}]