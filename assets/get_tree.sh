echo on
BASENAME=`basename $PWD`
tree -T $BASENAME -H -c  &> $BASENAME.html
