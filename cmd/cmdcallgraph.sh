echo on

export PKG=`pwd`
for d in dockerregistry gitserver oc openshift
do
    pushd $d
    dirlist=`ls *.go`
    for f in dirlist
    do
        echo 'callgraph on ' + $PKG/$d/$f 
        callgraph -format=digraph $PKG/$d/$f
    done
    popd 
done
