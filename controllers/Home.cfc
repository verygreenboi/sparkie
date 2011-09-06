<cfcomponent extends="Controller" output="false">
	
	<cffunction name="init">
		<cfset filters(through="getInstallDir")>
		<cfset filters(through="chkInstall")>		
	</cffunction>

	
	<cffunction name="index">
		
				
		
	</cffunction>
	
	<cffunction name="chkInstall">
		
		<cfif fileExists(setupcheck)>
		<cfelse>
		
			<cfset redirectTo(route="install")>
		
		</cfif>
	</cffunction>

</cfcomponent>