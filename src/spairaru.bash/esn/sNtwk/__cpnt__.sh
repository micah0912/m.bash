
#!/usr/bin/env bash
# ######################################################################################
# CONPONENT HOOK
# ######################################################################################
# --------------------------------------------------------------------------------------
# SPAIRARU
# --------------------------------------------------------------------------------------
s \
	cpnt \
		"UrlCtlr" \
		"url" \
		"${BASH_SOURCE[0]%/*}"/__ldr__.sh \
;


s \
	cpnt \
		"PortCtlr" \
		"port" \
		"${BASH_SOURCE[0]%/*}"/__ldr__.sh \
;