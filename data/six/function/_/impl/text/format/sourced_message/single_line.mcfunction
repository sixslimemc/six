# IMPL > six : text/format/sourced_message
# single_line
#--------------------
# ./main
#--------------------

data modify storage six:out sourced_message.result.extra[0].extra append value {text:" "}
data modify storage six:out sourced_message.result.extra append from storage six:in sourced_message.lines[0]