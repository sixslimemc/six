#> six :-/ index
#--------------------
# $> items: $storage<[]any>
# $> to: $storage<any>
# $> index: any
# $> op: 'set' | 'append' | 'prepend'
#--------------------

$return run data modify storage $(to) $(op) from storage $(items)[$(index)]