<cfoutput>

	<div class="page-header">
		<h1>#application.applicationname# - #left(Server.OS.Name, 7)#</h1>
	</div>
	
	<h2>Profile</h2>
	
	<section id="edit-form" class="span8">
		#startFormTag(route="edit-Profile")#
		
		#hiddenfield(objectName="profile", property="id")#
		
		#textField(objectName="profile", property="userLogin", label="Username", class="xlarge", appendToLabel="<div class='input'>", append="</div></div>")#
		
		#textField(objectName="profile", property="usermetaFirstName", label="First Name", class="xlarge", appendToLabel="<div class='input'>", append="</div></div>")#
		
		#textField(objectName="profile", property="usermetaLastName", label="Last Name", class="xlarge", appendToLabel="<div class='input'>", append="</div></div>")#
		
		<div class="actions">
					
			<button class="btn primary large" type="submit">Install&raquo;</button>
			
		</div>
				
		#endFormTag()#
	</section>

</cfoutput>