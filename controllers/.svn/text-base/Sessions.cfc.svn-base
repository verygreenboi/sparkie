<cfcomponent extends="Controller">
  
  <cffunction name="init">
	<cfset provides("html,json")>
    <cfset filters(through="loginProhibited", only="new, create")>
  </cffunction>

	
	
	<cffunction name="create">
    
    	<!---<cfdump var="#params#" abort="true" />--->
	
		<cfif form.log is "" or form.pwd is "">
			
			<cfset $failedLogin()>
			
		<cfelse>
			<!--- <cfset $passwordAuthentication(form.log, form.pwd) /> --->
			<!--- <cfset authUser = model("user").findOne(where="username = '#form.log#' and password = '#form.pwd#'")> --->
			
			<cfquery datasource="hivdata" name="authUser">
				SELECT *
				FROM users
				WHERE username = '#form.log#' AND password = '#form.pwd#'
			</cfquery>
			
			<cfif authUser.recordCount gt 0>
				<cfset $successfulLogin(authUser.username)>
			<cfelse>
				<cfset $failedLogin()>
			</cfif>
			
		</cfif>
	</cffunction>
	
	<cffunction name="destroy">
		<!--- todo: need to check for the remember me flag here and delete cookie if needed --->
		<cfset structDelete(session, 'currentUser') />
		<cfset flashInsert(success='You have been logged out') />
		<cfset redirectTo(route="home") />
	</cffunction>
	
	<!--- private methods --->
	
	<cffunction name="$passwordAuthentication">
		<cfargument name="login" type="any" required="true" />
		<cfargument name="password" type="any" required="true" />
		
		<cfset authUser = model("user").findOneByUsernameAndPassword(arguments.login, arguments.password)>
			
		<cfif isboolean(authUser) and Not authUser>
			<cfset $failedLogin()>
		</cfif>
		
		<!--- <cfif authUser.isPassword(arguments.password)>
			<cfset $successfulLogin(authUser)>
		<cfelse>
			<cfset $failedLogin()>
		</cfif> --->
	</cffunction>
	
	<cffunction name="$successfulLogin">
	 <!--- <cfargument name="user" type="any" required="true">
	   
	  <cfset session.currentUser = arguments.user>
		
		<cfif structKeyExists(params,"rememberMe")>
			<cfcookie name="app.rememberme" value="true" expires="14" />
		</cfif>
	   
	  <!--- Update the lastLogin column --->
		<cfset session.currentUser.lastLogin = now()>
		<cfset session.currentUser.save()> --->
		
		<!--- This redirects the user to the default account page but you can change this to go where you want --->
		<!--- <cfset flashInsert(success="Hello <strong>#session.currentUser.name#</strong>! You are now signed in.")>
		<cfset redirectTo(route="dashboard")> --->
		
		<cfset greeting = {}>
    	<cfset greeting["message"] = "success">
		<cfset greeting["time"] = #form.log#>
	
		<cfset renderWith(greeting)>
		
	</cffunction>
	
	<cffunction name="$failedLogin">
		<!---
			TODO : would like to add a method call here to update a failed login table...
		--->
		<!--- <cfset flashInsert(error="Login failed, please try again!")>
		<cfset redirectTo(route="login")> --->
		<cfset greeting = {}>
    	<cfset greeting["message"] = "invalid">
		<cfset greeting["time"] = #form.log#>
	
		<cfset renderWith(greeting)>
	</cffunction>
	
</cfcomponent>
