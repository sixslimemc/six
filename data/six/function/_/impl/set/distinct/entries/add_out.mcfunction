# IMPL > six : set/distinct
# entries/add_out
#--------------------
# ./each
#--------------------

data modify storage six:_ eval[-1].out.result append from storage six:_ eval[-1].v.this_entry.value

data modify storage six:_ eval[-1].v.seen append from storage six:_ eval[-1].v.this_entry