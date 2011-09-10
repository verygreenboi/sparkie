<cfcomponent extends="Model" output="false">
	
	<cffunction name="init">
		
		<cfset belongsTo("user")>
		
		<cfset hasMany("comments")>
		
	</cffunction>

</cfcomponent>