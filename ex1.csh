#!/usr/bin/tcsh
echo "hello $USER"
echo "This machine is `uname -n`"
echo "the calendar for this month is:"
cal
echo "you ar running these processess:"
ps

echo "what is your name?"
set name = $<
echo Greeting to you,$name
echo see you soon

