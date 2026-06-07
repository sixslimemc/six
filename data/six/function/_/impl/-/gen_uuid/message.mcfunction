# IMPL > six :-/ gen_uuid
# message
#--------------------
# ./main
#--------------------

$data modify storage six:in sourced_message.lines append value [{text:"UUID: ", color:white}, {text:"$(uuid)", color:yellow, hover_event:{action:"show_text",value:{text:"Click to copy", color:gray}}, click_event:{action:"copy_to_clipboard",value:"$(uuid)"}}]
$data modify storage six:in sourced_message.lines append value [{text:"guuid: ", color:white}, {text:"$(guuid)", color:yellow, hover_event:{action:"show_text",value:{text:"Click to copy", color:gray}}, click_event:{action:"copy_to_clipboard",value:"$(guuid)"}}]
data modify storage six:in sourced_message.source set value "six:-/gen_uuid"
function six:text/format/sourced_message

tellraw @s {storage:"six:out", nbt:"sourced_message.result", interpret:true}
