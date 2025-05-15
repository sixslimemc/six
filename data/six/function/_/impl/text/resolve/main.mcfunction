# IMPL > six : text/resolve
# main AS [text display]

data modify entity @s text set from storage six:in resolve.text
data modify storage six:out resolve.result set from entity @s text
kill @s