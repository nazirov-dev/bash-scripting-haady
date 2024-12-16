#!/bin/bash


source /home/challenge3_2_3/challenge3_2_3/addOne.sh


testAddOne() {
	expected=12
	actual=$(addOne 11)
	if [ "$actual" == "$expected" ]; then
	    echo "BASH{1_ga_Oshirish}"
	fi

}

testAddOne
