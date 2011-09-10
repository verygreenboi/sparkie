<cfcomponent extends="Model" output="false">

	<cffunction name="init">
		
		<!--- Association --->
		
		<cfset hasOne("usermeta")>
		
		<cfset validatesPresenceOf(property="username", message="Username is required")>
		<cfset validatesPresenceOf(property="email" , message="Email is required.")>
		<cfset validatesPresenceOf(property="password", message="Password is required")>
		<cfset validatesPresenceOf(property="name" , message="Name is required")>
		<cfset validatesUniquenessOf(property="username", message="That username that is already in our system.", when="onCreate")>
		<cfset validatesUniquenessOf(property="email", message="That email already exists.")>
		<cfset validatesConfirmationOf(property="password",message="The passwords you entered did not match.") />
		<cfset validatesLengthOf(property="username", within="4,25", message="Your username must be 4 - 25 characters long", allowBlank="false")>
    	<cfset validatesFormatOf(property="email", regEx="^[\_]*([a-z0-9]+(\.|\_*)?)+@([a-z][a-z0-9\-]+(\.|\-*\.))+[a-z]{2,6}$", message="That email address is not valid")>
    
		<!--- this callback is for encypting the password after validation and before saving the user --->
		
	</cffunction>
	
</cfcomponent>

