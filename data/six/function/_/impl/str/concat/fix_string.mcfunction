# IMPL > six : str/concat
# fix_string
#--------------------
# ./do
#--------------------

$data modify storage six:_ x.str set value $(quote)\$(quote)$(string)$(quote)
data modify entity @s text set value {plain:true, storage:"six:_", nbt:"x.str"}
data modify storage six:_ v.concat.string set from entity @s text.extra[1]
