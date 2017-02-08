#!/bin/bash

# Script for testing POST requests to CGI programs
# $1 is the CGI program
# $2 is the query string
# $3 is the path info

export REQUEST_METHOD=POST
export CONTENT_TYPE=application/x-www-form-urlencoded
export QUERY_STRING=$2
export CONTENT_LENGTH=`echo -n $QUERY_STRING | wc -c`
export PATH_INFO=$3

echo $2 | $1
