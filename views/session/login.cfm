<cfoutput>

	<div class="span12">
		
		<div class="page-header">
			<h2>Login</h2>
		</div>
		
		<cfif flashKeyExists("error")>
		
			<div class="alert-message error">
		        <p><strong>Oh snap!</strong> #flash("error")#</p>
		      </div>
		
		</cfif>
		
		#startFormTag(action="signin")#
		
		#textfield(label="Username", objectName="user", property="userLogin", class="xlarge", appendToLabel="<div class='input'>", append="</div></div>")#
		
		#passwordField(label="Password", objectName="user", property="userPass", class="xlarge", appendToLabel="<div class='input'>", append="</div></div>")#
		
		<div class="actions">
			
			<button class="btn primary large" type="submit">Login&raquo;</button>
		
		</div>
		
		#endFormTag()#

</cfoutput>