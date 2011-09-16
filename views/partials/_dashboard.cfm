<cfoutput>
	
	<aside class="sidebar">
		
		<ul id="adminMenu">
		
			<cfif structKeyExists(session.user, "role")>
				
				<cfswitch expression="#session.user.role#">
					
					<cfcase value="admin">
						
						#includePartial("../partials/adminSide/adminHomeLink")#
						<li class="seperator">
						#includePartial("../partials/adminSide/adminPostLink")#
						#includePartial("../partials/adminSide/adminCommentLink")#
						#includePartial("../partials/adminSide/adminCatLink")#
						#includePartial("../partials/adminSide/adminPagesLink")#
						<li class="seperator">
						#includePartial("../partials/adminSide/adminUserLink")#	
						#includePartial("../partials/adminSide/adminSettingsLink")#						
						
					</cfcase>
					
					<cfcase value="author">
						
						#includePartial("../partials/adminSide/adminHomeLink")#
						<li class="seperator">
						#includePartial("../partials/adminSide/adminPostLink")#
						#includePartial("../partials/adminSide/adminCommentLink")#
						
					</cfcase>
					
					<cfcase value="contributor">
						#includePartial("../partials/adminSide/adminHomeLink")#
						<li class="seperator">
						#includePartial("../partials/adminSide/adminPostLink")#
					</cfcase>
					
					<cfdefaultcase>
					</cfdefaultcase>
				
				</cfswitch>
				
			</cfif>
		
		</ul>
	</aside>

</cfoutput>