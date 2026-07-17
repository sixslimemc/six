# IMPL > six : str/stringify
# check_dquote
#--------------------
# ./main
#--------------------

$data modify storage six:out stringify.result set value "$(object)"
scoreboard players set *stringify.quote_success _six 1