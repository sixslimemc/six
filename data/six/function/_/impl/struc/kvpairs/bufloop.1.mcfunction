# IMPL > six:struc/kvpairs
# bufloop.1

execute if score *kvpairs.brace_scope _six matches 1.. run return run function six:_/impl/struc/kvpairs/in_braces
execute if score *kvpairs.bracket_scope _six matches 1.. run return run function six:_/impl/struc/kvpairs/in_brackets
execute if data storage six:_ v.kvpairs{this_token:":"} run return run function six:_/impl/struc/kvpairs/handle_token/keysep
execute if data storage six:_ v.kvpairs{this_token:"}"} run return run function six:_/impl/struc/kvpairs/handle_token/close_brace
execute if data storage six:_ v.kvpairs{this_token:'"'} run return run function six:_/impl/struc/kvpairs/handle_token/quote
execute if data storage six:_ v.kvpairs{this_token:"'"} run return run function six:_/impl/struc/kvpairs/handle_token/quote
execute if data storage six:_ v.kvpairs{this_token:"]"} run return run function six:_/impl/struc/kvpairs/handle_token/close_bracket
