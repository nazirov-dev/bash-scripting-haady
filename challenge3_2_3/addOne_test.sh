#!/bin/bash


source ./addOne.sh


testAddOne() {
	expected=12
	actual=$(addOne 11)
	if [ "$actual" == "$expected" ]; then
	    echo "BASH{1_ga_Oshirish}"
	fi

}

testAddOne
