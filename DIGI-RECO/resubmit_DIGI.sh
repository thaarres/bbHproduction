#!/bin/zsh

for i in `ls crab_projects/|grep -v Mini|grep -v RECO`; do
  echo $i
  crab status -d crab_projects/$i
  crab resubmit -d crab_projects/$i
done
