<!---
	This is the parent controller file that all your controllers should extend.
	You can add functions to this file to make them globally available in all your controllers.
	Do not delete this file.
--->
<cfcomponent extends="Wheels">
	
	<cffunction name="init">
		
		<cfset filters(through="checkLogin", except="login,register,signin,install,createInstall,index")>
		<cfset filters(through="checkRole", except="login,register,signin,install,createInstall,index")>
	</cffunction>
	
	<cffunction name="getInstallDir">
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
	</cffunction>
	
	<cffunction name="checkLogin">
		
		<cfif NOT structKeyExists(session, "user")>
			
			<cfset session.redirection = [#params.controller#, #params.action#]>
			
			<cfset redirectTo(route="login")>
			
		</cfif>
		
	</cffunction>
	
	<cffunction name="checkRole">
		<cfif structKeyExists(session, "user")>
			<cfif structKeyExists(session.user, "role") and #session.user.role# eq "user">
				<cfset flashInsert(error="You are not authorised to view this page!")>
				<cfset renderPage(action="forbidden")>
			</cfif>
		</cfif>
	
	</cffunction>
	
</cfcomponent>