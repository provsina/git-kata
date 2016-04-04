#!/bin/bash

source util.sh

echo "KATA 4 - SQUASHING COMMITS"
echo ""
echo "SCENARIO DESCRIPTION"
echo "Working on your feature branch, you've made a whole bunch
of commits. Some of them are very granular and would pollute
master branch if merged in. Squash them into a single commit and
push the single commit to the remote branch"

commitChange "Old MACDONALD had a farm" > /dev/null 2>&1
commitChange "E-I-E-I-O" > /dev/null 2>&1
commitChange "And on his farm he had a cow" > /dev/null 2>&1
commitChange "E-I-E-I-O" > /dev/null 2>&1
pushChanges
