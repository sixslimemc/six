#> six : text/resolve

data remove storage six:out resolve

execute if score *statics _six matches 1 as 6bbbafcb-bcca-43f2-8528-91a6e98fa864 run function six:_/impl/text/resolve/main
execute unless score *statics _six matches 1 summon text_display run function six:_/impl/text/resolve/main

data remove storage six:in resolve

return 1