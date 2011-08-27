<cfcomponent extends="Controller" output="false">
	
	<!--- to require authentication --->
	<cffunction name="init">
    	<cfset filters(through="loginRequired")>
  	</cffunction>
		
	<!--- Action  for accepting data --->
	
	<cffunction name="newCase">
		<!--- TODO (Use this function to get data from air app) --->
			<!--- 
			<cfset time = now()>
			<cfset rendertext(time)> --->
	</cffunction>

</cfcomponent>