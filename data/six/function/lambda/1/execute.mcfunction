#> six : lambda/1/execute
#--------------------
# -> lambda: Lambda<^T, ^R>
# -> out_path: $storage<^R>
#--------------------
# .
#--------------------
# executes <lambda>, directly setting <out_path> to <lambda.out> after execution.
#--------------------
# ..: return of <lambda.command>
#--------------------
# this function is only practical if you do not know the content of <lambda>; otherwise, just execute the command directly.
# (e.g. when implementing a function that takes a lambda as input.)
#--------------------

execute unless data storage six:in execute.lambda.command run data modify storage six:in execute.lambda.command set from storage six:_ const.empty_command_fill
execute unless data storage six:in execute.lambda.pre_run run data modify storage six:in execute.lambda.pre_run set from storage six:_ const.empty_command_fill

data modify storage six:in execute.lambda.redirect_out set from storage six:in execute.out_path
execute store result score *x _six run function six:_/impl/lambda/1/execute/main with storage six:in execute.lambda 

data remove storage six:_ impl.execute
data remove storage six:in execute

return run scoreboard players get *x _six