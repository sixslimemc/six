# six :-/ lambdar/1/execute
#--------------------
# $: Lambdar<any, any>
#--------------------
# executes the Lambdar this function was macro-supplied with.
#--------------------

scoreboard players set *x _six 0

$$(pre_run)
$data modify storage $(in) set from storage $(from)
$execute store result score *x _six run $(command)
$data modify storage $(to) set from storage $(out)

return run scoreboard players get *x _six