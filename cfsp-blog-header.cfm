<!--- Loads sparkie enviroment --->

<cfif not isdefined("$cfsp_did_header")>
	
	<cfset $cfsp_did_header = true>
	
	<cfinclude template="cfsp-load.cfm">
	
</cfif>