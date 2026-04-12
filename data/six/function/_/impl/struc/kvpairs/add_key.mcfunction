# IMPL > six : struc/kvpairs
# add_key
#--------------------
# ./handle_token/keysep
#--------------------

say hi

$data modify storage six:_ v.kvpairs.result_entry.value set from storage six:in kvpairs.struc.$(key_quote_type)$(key)$(key_quote_type)
data modify storage six:out kvpairs.result append from storage six:_ v.kvpairs.result_entry