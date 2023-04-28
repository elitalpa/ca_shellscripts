#!/bin/bash

cat /proc/cpuinfo | grep "processor" | wc -l

# # Notes:
# - Pipelines, often called pipes, is a way to chain commands and connect output from one command to the input of the next.
# - A pipeline is represented by the pipe character: |.
# - By default pipelines redirects only the standard output, if you want to include the standard error you need to use the form |& which is a short hand for 2>&1 |
