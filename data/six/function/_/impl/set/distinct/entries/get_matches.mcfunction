# IMPL > six : set/distinct
# entries/get_matches
#--------------------
# ../main
#--------------------

$data modify storage six:_ eval[-1].v.matches append from storage six:_ eval[-1].v.seen[$(match)]