
#!/usr/bin/env bash
# ######################################################################################
# CONPONENT HOOK
# ######################################################################################
# --------------------------------------------------------------------------------------
# SPAIRARU
# --------------------------------------------------------------------------------------
s \
	cpnt \
		"PptCtlr" \
		"ppt" \
		"prompt" \
		"${BASH_SOURCE[0]%/*}"/__ldr__.sh \
;