#> six:_/sc/manifest
#--------------------
# MANIFEST
#--------------------

data modify storage slimecore:in manifest.pack set value "six"
data modify storage slimecore:in manifest.version set value {major:1, minor:0, patch:0}
data modify storage slimecore:in manifest.display.name set value "SixLib"
data modify storage slimecore:in manifest.display.summary set value "TODO"
data modify storage slimecore:in manifest.url set value "TODO"
data modify storage slimecore:in manifest.author set value {name:"SixSlime", url:"https://github.com/sixslime"}

data modify storage slimecore:in manifest.dependencies set value [{order:{load:1b,post_load:0b,pre_load:0b,tick:0b},pack:"lambda",url:"TODO",version:{major:1,minor:0,patch:0}}]

function slimecore:manifest