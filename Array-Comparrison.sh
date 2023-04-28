#!/bin/bash
a=(3 5 8 10 6)
b=(6 5 4 12)
c=(14 7 5 7)

# enter your array comparison code here
for aa in ${a[@]} ; do
	for bb in ${b[@]} ; do
    	for cc in ${c[@]} ; do
        	if [[ $aa -eq $bb && $aa -eq $cc ]] ; then
            	echo $aa
            fi
        done
    done
done
# will compare :
# a[0] b[0] c[0]
# a[0] b[0] c[1]
# a[0] b[0] c[2]
# a[0] b[0] c[3]
# a[0] b[1] c[0]
# a[0] b[1] c[1]
# a[0] b[1] c[2]
# a[0] b[1] c[3]
# ...

