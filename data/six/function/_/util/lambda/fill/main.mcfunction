#> six:util > lambda/fill
#--------------------
# -> lambda: {
#- command? $command
#- pre_run? $command
#- ...
#}
#--------------------
# <- result: ^L
#--------------------
# fills <command> and <pre_run> with dummy commands.
#--------------------
# 1.
#--------------------

data modify storage six:_ util.fill.out.result set from storage six:_ util.fill.in.lambda
execute unless data storage six:_ util.fill.out.result.command run data modify storage six:_ util.fill.out.result.command set from storage six:_ const.empty_command_fill
execute unless data storage six:_ util.fill.out.result.pre_run run data modify storage six:_ util.fill.out.result.pre_run set from storage six:_ const.empty_command_fill

data remove storage six:_ util.fill.in

return 1