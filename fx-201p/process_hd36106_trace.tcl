#!/usr/bin/tclsh
#
# Processes a GPIO trace file and adds some annotation
#
#
# Add a --4 byte-- line somewhere immediately before the first line of a 4
# bit group
#
# Arguments:
#
# <filename>  :    Name of trace file
#
#

set filename [lindex $argv 0]

puts "Filename: $filename"

set f [open $filename]
set txt [read $f]
close $f





