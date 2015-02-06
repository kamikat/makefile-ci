#!/bin/sh
#################################
# Continuous Integration Driver #
# Usage:                        #
#   ./ci.sh <target>            #
# Example:                      #
#   ./ci.sh source.conf         #
#################################

while True
do
  make $1
  sleep 5
done

