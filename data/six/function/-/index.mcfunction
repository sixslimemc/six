#> six:_/macro/index
#--------------------
# $> from: $storage<[]any>
# $> to: $storage<any>
# $> index: any
# $> op: 'set' | 'append'
#--------------------

$data modify storage $(to) $(op) from storage $(from)[$(index)]