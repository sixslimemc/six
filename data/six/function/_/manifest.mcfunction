#> six:_/manifest
# @ MANIFEST

data modify storage slimecore:in manifest.pack set value {}

data modify storage slimecore:in manifest.pack.pack_id set value "six"
data modify storage slimecore:in manifest.pack.author_id set value "sixslime"
data modify storage slimecore:in manifest.pack.version set value {major:0, minor:1, patch:0}
data modify storage slimecore:in manifest.pack.url set value "TODO"

data modify storage slimecore:in manifest.pack.display.name set value "TODO"
data modify storage slimecore:in manifest.pack.display.summary set value "TODO"
data modify storage slimecore:in manifest.pack.display.author_name set value "SixSlime"

data modify storage slimecore:in manifest.pack.display.links.author set value "https://github.com/sixslimemc"
data modify storage slimecore:in manifest.pack.display.links.info set value "https://github.com/sixslimemc/six"
# data modify storage slimecore:in manifest.pack.display.links.versions set value "TODO"

data modify storage slimecore:in manifest.pack.entrypoints set value []
data modify storage slimecore:in manifest.pack.entrypoints append value {id:"tick"}
# data modify storage slimecore:in manifest.pack.entrypoints[-1].before append value {pack_ref:"PACK", id:"ID"}
# data modify storage slimecore:in manifest.pack.entrypoints[-1].after append value {pack_ref:"PACK", id:"ID"}

data modify storage slimecore:in manifest.pack.preload_entrypoints set value []
# data modify storage slimecore:in manifest.pack.preload_entrypoints append value {id:"ID"}
# data modify storage slimecore:in manifest.pack.preload_entrypoints[-1].before append value {pack_ref:"PACK", id:"ID"}
# data modify storage slimecore:in manifest.pack.preload_entrypoints[-1].after append value {pack_ref:"PACK", id:"ID"}

data modify storage slimecore:in manifest.pack.abstract_declarations set value []
# data modify storage slimecore:in manifest.pack.abstract_declarations append value "ID"

data modify storage slimecore:in manifest.pack.abstract_implementations set value []
# data modify storage slimecore:in manifest.pack.abstract_implementations append value {pack_ref:"PACK", id:"ID"}

data modify storage slimecore:in manifest.pack.dependencies set value []
# data modify storage slimecore:in manifest.pack.dependencies append value {pack_id:"PACK", author_id:"AUTHOR"}
# data modify storage slimecore:in manifest.pack.dependencies[-1].optional set value false
# data modify storage slimecore:in manifest.pack.dependencies[-1].version set value {major:0, minor:1}
# data modify storage slimecore:in manifest.pack.dependencies[-1].download.url set value "TODO"
# data modify storage slimecore:in manifest.pack.dependencies[-1].download.version set value {major:0, minor:1, patch:0}

data modify storage slimecore:in manifest.pack.is_library set value false

function slimecore:api/manifest

# DEBUG
function six:_/test_manifests