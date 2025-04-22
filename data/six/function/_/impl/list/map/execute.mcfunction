#> six:_/impl/list/map/execute
#--------------------
# ./each
#--------------------

$data modify storage $(in_loc) set from storage six:_ impl.map.list[-1]
$$(pre_run)
$$(command)
$data modify storage six:out map.result prepend from storage $(out)

say hi