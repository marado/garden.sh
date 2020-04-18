#!/bin/bash

# #############################################################################
# garden.sh -- a script to htmlify botany-view
#
# botany-view[1] takes a snapshot of your botany flower.
# This script, here to be used in a cron, puts the result into an html file,
# in order to have a pretty css style, instead of being seen by your browser
# as text files usually are.
#
# [1] https://github.com/jifunks/botany/blob/master/botany-view.py
#
# #############################################################################


html="<html><head><link rel='stylesheet' href='styles.css' type='text/css'></head><body><pre>"
garden=$(/usr/bin/python /home/marado/git/botany/botany-view.py)
echo "$html$garden" > /home/marado/public_html/garden.html
