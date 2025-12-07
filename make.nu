def main [name: string] {
    cd ($env.CURRENT_FILE | path dirname)
    # replace instances of '_namespace_' with name
    open empty_dirs.txt | lines | each {mkdir $in}
    glob ./** -D -e [**/.git/**] | where {$in != $env.CURRENT_FILE} | each {|filename| open $filename -r | str replace -a "_namespace_" $name | to text | save -f $filename}
    mv ./data/_namespace_ $"./data/($name)" -f
    mv pack.mcmeta.json pack.mcmeta
    rm -pf empty_dirs.txt
}