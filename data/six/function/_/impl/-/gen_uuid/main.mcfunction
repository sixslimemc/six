# IMPL > six :-/ gen_uuid
# main
kill @s

data modify storage six:_ v.gen_uuid.uuid set from entity @s UUID

data modify storage six:in guuid.uuid set from storage six:_ v.gen_uuid.uuid
function six:uuid/guuid
data modify storage six:_ v.gen_uuid.guuid set from storage six:out guuid.result

# tellraw:
execute as @p[tag=_six.exe] run function six:_/impl/-/gen_uuid/message with storage six:_ v.gen_uuid