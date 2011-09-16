<cfoutput>
	
	<li id="menu-home">
		<div class="menuHeader">
			<div class="adminmenuIcon">
				#linkTo(route="dash", text=" ")#
			</div>
			
			#linkTo(route="dash", text="Dashboard")#
		</div>
		<div class="subMenu">
			<ul>
				<li>#linkTo(route="dash", text="Home")#</li>
			</ul>
		</div>
	</li>

</cfoutput>