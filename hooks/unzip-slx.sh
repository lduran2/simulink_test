#!/usr/bin/env bash
# Self      : /hooks/unzip_all_slx
# Decompresses all Simulink models in this repo after pushing to
# remote.
# By        : Leomar Duran <https://github.com/lduran2>
# When      : 2022-01-24t04:51R
# Version   : 1.0.0
# 
# CHANGELOG :
#	v1.0.0 - 2022-01-24t04:51R
#		decompresses all Simulink models
#

# find each model
find . -type f -name '*.slx' -printf '%p\n' | 
	# read the model's name into FILE
	while read FILE ; do
		# unzip to the corresponding directory
		# overriding
		unzip -o "$FILE" -d "${FILE%.*}"
	done # while read FILE
# done find FILE

