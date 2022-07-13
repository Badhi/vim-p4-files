#!/bin/bash

function normalize()
{
    if [ "%{1: -1}" == "/" ] ; then
        echo $1
    else
        echo ${1}/
    fi
}
 
client_name=`p4 -F %client% info`
root_dir=`p4 -F %clientRoot% -ztag info`
root_dir=$(normalize $root_dir)

p4 -F %depotFile% files -e //$client_name/... |\
    p4 -F %localPath% -x - where
