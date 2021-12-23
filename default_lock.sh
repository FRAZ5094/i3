#!/bin/sh

BLANK='#00000000'
CLEAR='#ffffff22'
DEFAULT='#61afefcc'
TEXT='#c8ccd4ee'
WRONG='#be5046bb'
VERIFYING='#61afefcc'
KEYHL='98c379bb'

i3lock \
	--insidever-color=$CLEAR     \
	--ringver-color=$VERIFYING   \
	\
	--insidewrong-color=$CLEAR   \
	--ringwrong-color=$WRONG     \
	\
	--inside-color=$BLANK        \
	--ring-color=$DEFAULT        \
	--line-color=$BLANK          \
	--separator-color=$DEFAULT   \
	\
	--verif-color=$TEXT          \
	--wrong-color=$TEXT          \
	--time-color=$TEXT           \
	--date-color=$TEXT           \
	--layout-color=$TEXT         \
	--keyhl-color=$TEXT         \
	--bshl-color=$WRONG          \
	\
	--screen 1                   \
	--blur 5                     \
	--clock                      \
	--indicator                  \
	--time-str="%I:%M:%S"        \
	--date-str="%A, %m %Y"       \
	--keylayout 1                \
