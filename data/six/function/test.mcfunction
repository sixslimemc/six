
data modify storage six:in distinct.items set value [{a:1, b:1}, {a:2, b:1}, {a:3, b:1}, {a:4, b:1}]
data modify storage six:_ var.test set value [{a:2, b:2}, {a:4, b:2}, {a:5, b:2}, {a:6, b:2}, {a:9, b:2}, {a:8, b:2}]
data modify storage six:in distinct.items append from storage six:_ var.test[]
data modify storage six:in distinct.ordered set value false
data modify storage six:in distinct.by set value {command:'function six:compound/partial', in:'six:in partial.compound', out:'six:out partial.result', pre_run:'data modify storage six:in partial.get set value {only:["a"]}'}
tellraw @a ["DISTINCT IN: ", {'storage':'six:in', 'nbt':'distinct'}]
function six:set/distinct
tellraw @a ["DISTINCT: ", {'storage':'six:out', 'nbt':'distinct'}]

data modify storage six:in intersection.a set value [{a:1, b:1}, {a:2, b:1}, {a:3, b:1}, {a:4, b:1}]
data modify storage six:in intersection.b set value [{a:2, b:2}, {a:4, b:2}, {a:5, b:2}, {a:6, b:2}, {a:9, b:2}, {a:8, b:2}]
data modify storage six:in intersection.ordered set value true
data modify storage six:in intersection.by set value {command:'function six:compound/partial', in:'six:in partial.compound', out:'six:out partial.result', pre_run:'data modify storage six:in partial.get set value {only:["a"]}'}
tellraw @a ["INTERSECTION IN: ", {'storage':'six:in', 'nbt':'intersection'}]
function six:set/intersection
tellraw @a ["INTERSECTION OUT: ", {'storage':'six:out', 'nbt':'intersection'}]

data modify storage six:in intersection.a set value ["a", "b", "c", "d", "e"]
data modify storage six:in intersection.b set value ["e", "f", "a", "l", "c", "oo", "k"]
data modify storage six:in intersection.ordered set value true
tellraw @a ["INTERSECTION IN: ", {'storage':'six:in', 'nbt':'intersection'}]
function six:set/intersection
tellraw @a ["INTERSECTION OUT: ", {'storage':'six:out', 'nbt':'intersection'}]