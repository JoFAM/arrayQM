#!/bin/bash
set -e
set -o errexit

SVNSRC=$HOME/madman/Rpacks
TEMP=$HOME/tmp

svn export --force $SVNSRC/arrayQM $TEMP/arrayQM
R CMD INSTALL $TEMP/arrayQM
echo "Stangle('$TEMP/arrayQM/inst/doc/arrayQM.Rnw')" | R --no-save
echo "R"
echo "source('arrayQualityMetrics.R')"


