# IMPL > six : str/stringify
# buffer/break_token
#--------------------
# ./loop.1
#--------------------

data modify storage six:_ v.stringify.buffer append from storage six:_ v.stringify.this_token.text
data modify storage six:_ v.stringify.buffer append from storage six:_ v.stringify.this_token.extra[]