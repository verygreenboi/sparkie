<cfcomponent extends="Controller" output="false">

	<cffunction name="Install">

		
	</cffunction>
	
	<cffunction name="createInstall">
		
		<!--- Sets values from params --->
		
		<cfset dsn = #params.dsn#>
		
		<!--- Points to various files to append dsn and write intall status --->
		
		<cfset settingsFile = #thisDirectory#&"config">
		
		<cfif #os# eq "Windows">
			<cfset dFile = "\settings.cfm">
		<cfelse>
			<cfset dFile = "/settings.cfm">
		</cfif>
		
		<cfset settingsFile = #settingsFile#&#dfile#>
		
		<cfset dsnFileContent = '<cfset set(dataSourceName="#dsn#")>'>
		
		<cfset installStatus = '<cfset installStatus="yes")>'>
		
		<cffile action="append" file="#settingsFile#" output="#dsnFileContent#">
		
		<cffile action="write" file="#setupCheck#" output="#installStatus#">
		
		<!--- TODO: Remember to restart the app to make the dsn change take effect --->
		
		
	</cffunction>

	<cffunction name="dashboard">
		<cfset renderText("whoopie!!!")>
	</cffunction>
</cfcomponent>