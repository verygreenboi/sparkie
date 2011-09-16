<cfcomponent extends="Controller" output="false">
	
	<cffunction name="dashboard">
		
	</cffunction>
	
	<cffunction name="editPost">
		<cfset renderText("hi")>
	</cffunction>
	
	<!--- User profile --->
	
	<cffunction name="profile">
		<!--- TODO: Handle situations where params.userid is undefined --->
		
		<cfset profile = model("user").findOne(where="id='#params.userid#'", include="usermeta")>
		
	</cffunction>
	
	<cffunction name="editProfile">
		
		<cfset profile = model("user").findOne(where="id='#params.profile.id#'", include="usermeta")>
		
		<cfset profile.save(params.profile)>
		
	</cffunction>
	
</cfcomponent>