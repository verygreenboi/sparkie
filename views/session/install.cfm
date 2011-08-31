<cfoutput>
		
	<div class="span12">
		
		<div class="page-header">
			<h2>Installation</h2>
		</div>
				
		#startFormTag(route="createInstall", id="installForm")#
			<fieldset>
				<legend>Blog Information</legend>
				#textFieldTag(label="DSN", name="dsn", class="xlarge", appendToLabel="<div class='input'>", append="</div></div>")#
				#textFieldTag(label="Blog Title", name="title", class="xlarge", appendToLabel="<div class='input'>", append="</div></div>")#
				#textFieldTag(label="Blog Tagline", name="tagline", class="xlarge", appendToLabel="<div class='input'>", append="</div></div>")#
				#textFieldTag(label="Username", name="user", class="xlarge", appendToLabel="<div class='input'>", append="</div></div>")#
				#passwordFieldTag(label="Password", name="password", class="xlarge", appendToLabel="<div class='input'>", append="</div></div>")#
				#passwordFieldTag(label="Confirm Password", name="passwordConfirmation", class="xlarge", appendToLabel="<div class='input'>", append="</div></div>")#
				#textFieldTag(label="Email", name="email", class="xlarge", appendToLabel="<div class='input'>", append="</div>")#
				
				<div class="actions">
					
					<button class="btn primary large" type="submit">Install&raquo;</button>
					
				</div>
			</fieldset>
		#endFormTag()#
		
	</div>
</cfoutput>