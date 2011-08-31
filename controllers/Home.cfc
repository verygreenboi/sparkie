<cfcomponent extends="Controller" output="false">
	
	<cffunction name="init">
		<cfset filters(through="chkInstall")>		
	</cffunction>

	
	<cffunction name="index">
		
				
		
	</cffunction>
	
	<cffunction name="chkInstall">
		<cfset getInstallDir()>
		
		<cfif fileExists(setupcheck)>
		<cfelse>
		
			<cfset redirectTo(route="install")>
		
		</cfif>
	</cffunction>

</cfcomponent>