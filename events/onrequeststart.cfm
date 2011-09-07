<!--- Place code here that should be executed on the "onRequestStart" event. --->

<cfset thisPath = ExpandPath("*.*")> 
<cfset thisDirectory = GetDirectoryFromPath(thisPath)> 
<cfset setupCheck = #thisDirectory#&"miscellaneous">

<cfset OS = #left(Server.OS.Name, 7)#>
<!--- Checks the os using windows as reference. If there is a better way, I'll be interested in it. --->
<cfif #os# eq "Windows">
	<cfset installFile = "\install.cfm">
<cfelse>
	<cfset installFile = "/install.cfm">
</cfif>

<cfset setupCheck = #setupCheck#&#installFile#>

<cfif fileExists(setupcheck)>

		<cfinclude template="../miscellaneous/install.cfm">
		
		<cfif isdefined("installStatus")>
			<cfif #installStatus# eq "no" >
				
				<cffile action="delete" file="#setupCheck#">
				
				<cfset installStatus = '<cfset installStatus="yes">'>
				
				<cffile action="write" file="#setupCheck#" output="#installStatus#">
				
				<cflocation url="#SCRIPT_NAME#/?reload=true" addtoken="false">
			
			</cfif>
			
		<cfelse>
		
			<cffile action="delete" file="#setupCheck#">
			<cfset redirectTo(route="install")>
		</cfif>
	
<cfelse>

</cfif>

<!--- use the session.installed to verify install progress --->

<cfparam name="session.installed" default="no">

<cfif session.installed eq "yes">
	<cfset session.installed = "done">	
	<cfset redirectTo(route="dash")>
	
</cfif>