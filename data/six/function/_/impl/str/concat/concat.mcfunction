# IMPL > six : str/concat
# concat
#--------------------
# ./do
#--------------------

$data modify storage six:_ x.str set value $(acc_quote)$(string)$(acc)$(acc_quote)
execute if score *concat.fix_quote _six matches 0 run data modify storage six:_ v.concat.acc set from storage six:_ x.str
execute if score *concat.fix_quote _six matches 1 run data modify storage six:_ v.concat.acc set string storage six:_ x.str 1
