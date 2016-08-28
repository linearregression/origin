echo on
for d in */; do
    pushd $d
    ./get_tree.sh
    popd
    echo "generate tree in" $d
done
