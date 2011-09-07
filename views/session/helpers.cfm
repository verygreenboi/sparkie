<cffunction name="errorDSN">
</cffunction>

<cffunction name="errorPass">
	
	<cfoutput>#passwordFieldTag(label="Password", name="password", class="xlarge error", prependToLabel="<div class='clearfix error'>", appendToLabel="<div class='input'>", append="<span class='help-inline'>Password cannot be empty!</span></div></div>")#</cfoutput>
	
</cffunction>

<cffunction name="errorConfirmPass">
	
	<cfoutput>#passwordFieldTag(label="Confirm Password", name="passwordConfirmation", class="xlarge error",prependToLabel="<div class='clearfix error'>", appendToLabel="<div class='input'>", append="<span class='help-inline'>This does not match the password entered.</span></div></div>")#</cfoutput>
	
</cffunction>