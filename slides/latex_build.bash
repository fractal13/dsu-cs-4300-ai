#!/bin/bash

target="$1"
base=$(basename $target .pdf)
texfile="${base}.tex"
mpfile="${base}.mp"
logfile="${base}.log"
extensions="mp log aux mpx nav toc snm out vrb"
compile="pdflatex -shell-escape -halt-on-error"
tempfile=$(mktemp)


function remove_droppings() {
    for ext in $extensions; do
        rm -f ${base}.${ext}
    done
}

function cleanup() {
    remove_droppings
    rm -f ${tempfile}
}
trap cleanup EXIT

function compile_once() {
    $compile $texfile > $tempfile
    if [ $? -ne 0 ]; then
        cat $tempfile
        echo
        echo
        echo ERROR
        exit 1
    fi
}

function need_to_rerun() {
    if [ ! -e $logfile ]; then
        return 0
    fi
    if [ $(egrep Rerun $logfile | egrep -v ^Package | wc -l) -gt 0 ]; then
        return 0
    else
        return 1
    fi
}


echo "Building first time."
compile_once

if [ -e $mpfile ]; then 
    echo "Building meta post."
    compile_once
fi

count=0
while need_to_rerun; do
    echo "Rerunning by direction from logfile."
    compile_once
    ((count+=1))
    if [ $count -ge 5 ]; then
        echo "Too many reruns ($count)."
        echo "Stopping"
        exit 1
    fi
done

echo "Done"
exit 0
