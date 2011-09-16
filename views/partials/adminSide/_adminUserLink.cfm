<cfoutput>
	<li id="user-menu">
		<div class="menuHeader">	
		<div class="adminmenuIcon">
		</div>
		
		#linkTo(route="list-user", text="Users")#
		</div>
		<div class="subMenu">
			<ul>
				<li>#linkTo(route="add-user", text="Add New")#</li>
				<li>#linkTo(route="list-user", text="All Users")#</li>
				<li>#linkTo(route="user-profile", text="View Profile", userid="#session.user.id#")#</li>
			</ul>
		</div>
	</li>
</cfoutput>