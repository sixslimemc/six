# IMPL > six : set/distinct
# gen_entries/lambda
#--------------------
# ./each
#--------------------

data modify storage six:api distinct append value {value:{}}
data modify storage six:api distinct[-1].value set from storage six:_ eval[-1].v.entries[-1].value
$$(by)

# remove entry if equality key not set:
execute unless data storage six:api distinct[-1].equality_key run return run data remove storage six:_ eval[-1].v.entries[-1]

data modify storage six:_ eval[-1].v.entries[-1].equality_key set from storage six:api distinct[-1].equality_key