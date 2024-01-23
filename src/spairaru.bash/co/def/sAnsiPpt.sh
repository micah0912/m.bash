#!/usr/bin/env bash
# ######################################################################################
# ANSI PROMPT DEFINE
# ######################################################################################

. "${BASH_SOURCE[0]%/*}/sAnsi.sh" ;


# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# CURSOR
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# ansi_cursor_save
[[ -z "$ANSI_CRSR_SV" ]] \
&& declare -r ANSI_CRSR_SV="${ANSI_}s" \
;

# ansi_cursor_restore
[[ -z "$ANSI_CRSR_RSTR" ]] \
&& declare -r ANSI_CRSR_RSTR="${ANSI_}u" \
;
