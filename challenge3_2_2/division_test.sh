#!/bin/bash

source ./division.sh


testDivideTwoNum() {
	expected=2
	actual=$(divideTwoNum 100 50)
       if [ "$actual" == "$expected" ]; then
	 echo "BASH{4_b0l1m_da_yutuq_b0r}"
       fi	 


}

testDivideTwoNum
