#!/usr/bin/env bash
# ######################################################################################
# OPERATION SYSTEM CONTROLLER UTILITY GROUP
# ######################################################################################
OsCtlr() (



# ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# PACKAGE STATIC PUBLIC FUNCTION
# ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# ======================================================================================
# INSTALL
# ======================================================================================
	istl() {


		# MAIN PROCESSES --------

		# [ operation_system_typ ]
		local _os_typ=` \
			OsCtlr \
				typ
		` ;


		[[ $_os_typ =~ ^(debian|fedora)$ ]] \
		&& "${_os_typ^}Ctlr" \
			istl \
				"$@" \
		;


		# POST PROCESS : REPORT STATUS --------

		return $?


	} ;



# ======================================================================================
# UNINSTALL
# ======================================================================================
	uistl() {


		# MAIN PROCESSES --------

		# [ operation_system_typ ]
		local _os_typ=` \
			OsCtlr \
				typ
		` ;


		[[ $_os_typ =~ ^(debian|fedora)$ ]] \
		&& "${_os_typ^}Ctlr" \
			uistl \
				"$@" \
		;


		# POST PROCESS : REPORT STATUS --------

		return $?


	} ;



# ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# STATUS STATIC PUBLIC FUNCTION
# ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# ======================================================================================
# IS INSTALLED
# ======================================================================================
	isIstld() {


		# MAIN PROCESSES --------

		# [ operation_system_typ ]
		local _os_typ=` \
			OsCtlr \
				typ
		` ;


		[[ $_os_typ =~ ^(debian|fedora)$ ]] \
		&& "${_os_typ^}Ctlr" \
			isIstld \
				"$@" \
		;


		# POST PROCESS : REPORT STATUS --------

		return $?


	} ;



# ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# CORE STATIC PUBLIC FUNCTION
# ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# ======================================================================================
# FULLNAME
# ======================================================================================
	fnm() {


		# MAIN PROCESSES --------

		echo "` \
			cat /etc/os-release \
			| grep -Poz '(^|\n)PRETTY_NAME=\"\K.*?(?=\"(\n|$))' \
			| tr -d '\0' \
		`" ;


		# POST PROCESS : REPORT STATUS --------

		return $tru ;


	} ;



# ======================================================================================
# ID
# ======================================================================================
	id() {


		# MAIN PROCESSES --------

		echo "` \
			cat /etc/os-release \
			| grep -Po 'ID=("|)\K.*?(?="|$)' \
			| tr -d '\0' \
		`" ;


		# POST PROCESS : REPORT STATUS --------

		return $tru ;


	} ;



# ======================================================================================
# TITLE
# ======================================================================================
	ttl() {


		# MAIN PROCESSES --------

		echo "` \
			cat /etc/os-release \
			| grep -Poz '(^|\n)NAME=\"\K.*?(?=\"(\n|$))' \
			| tr -d '\0' \
		`" ;


		# POST PROCESS : REPORT STATUS --------

		return $tru ;


	} ;



# ======================================================================================
# TYPE
# ======================================================================================
	typ() {


		# MAIN PROCESSES --------

		local _typ="` \
			cat /etc/os-release \
			| grep -Po 'ID_LIKE=("|)\K.*?(?="|$)' \
			| tr -d '\0' \
		`" ;


		[[ -z "$_typ" ]] \
		&& _typ="` \
			cat /etc/os-release \
			| grep -Po 'ID=("|)\K.*?(?="|$)' \
			| tr -d '\0' \
		`" \
		;


		# POST PROCESS : OUTPUT RESULT --------

		echo $_typ ;


		# POST PROCESS : REPORT STATUS --------

		return $tru ;


	} ;



# ======================================================================================
# VERSION
# ======================================================================================
	ver() {


		# MAIN PROCESSES --------

		echo "` \
			cat /etc/os-release \
			| grep -Poz '(^|\n)VERSION_ID=\"\K.*?(?=\"(\n|$))' \
			| tr -d '\0' \
		`" ;


		# POST PROCESS : REPORT STATUS --------

		return $tru ;


	} ;



# ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# DEFAULT STATIC PUBLIC FUNCTION
# ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# ======================================================================================
# CONSTRUCTOR
# ======================================================================================

	# [ arguments ]
	local -a _ax=("$@") ;


	# HELP --------

	s_isHlp \
		"$@" \
	&& echo "" \
	&& return $tru \
	;


	# VERSION --------

	s_isVer \
		"$@" \
	&& echo "" \
	&& return $tru \
	;


	# POSITIONED ARGUMENT --------

	# [ positoined_arguments ]
	local -a _pax=` \
		s_gtCblPax \
	` ;


	# [ method ]
	local mtd__="${_pax[0]}" ;


	# MAIN PROCESS : METHOD --------

	# - action is callable
	if [[ "`
		type \
			-t \
			$mtd__ \
			2>/dev/null \
	`" ]] ;
	then


		shift 1 ;


		"$mtd__" \
			"$@" \
		;


		return $? ;


	fi ;


	# POST PROCESS : REPORT STATUS --------

	return $fls ;


 ) ;