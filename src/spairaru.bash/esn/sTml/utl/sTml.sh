#!/usr/bin/env bash
# ######################################################################################
# TERMINAL CORE UTILITY
# ######################################################################################
# ======================================================================================
# GET TERMINAL ROWS
# ======================================================================================
s_gtTmlRowx() {


	# MAIN PROCESS : SCROLLABLE ROWS --------

	stty \
		size \
	| cut \
		-d ' ' \
		-f1 \
	;


	# POST PROCESS : REPORT STATUS --------

	return $? ;


} ;



# ======================================================================================
# GET TERMINAL COLUMNS
# ======================================================================================
s_gtTmlColx() {


	# MAIN PROCESS : GET COLUMNS --------

	stty \
		size \
	| cut \
		-d ' ' \
		-f2 \
	;


	# POST PROCESS : REPORT STATUS --------

	return $? ;


} ;