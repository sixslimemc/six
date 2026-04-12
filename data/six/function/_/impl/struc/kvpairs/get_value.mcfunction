# IMPL > six : struc/kvpairs
# get_value
#--------------------
# ./next_key
#--------------------

$say $(key_quote_type)$(key)$(key_quote_type)
$data modify storage six:_ v.kvpairs.result_entry.value set from storage six:in kvpairs.struc.$(key_quote_type)$(key)$(key_quote_type)