
#!/usr/bin/env bash
# ######################################################################################
# CONPONENT HOOK
# ######################################################################################
# --------------------------------------------------------------------------------------
# SPAIRARU
# --------------------------------------------------------------------------------------
s \
	cpnt \
		"LogRotCtlr" \
		"logrot" \
		"logrotate" \
		"${BASH_SOURCE[0]%/*}"/__ldr__.sh \
		--rqr doc \
		--rqr ppt \
		--rqr fl \
;
