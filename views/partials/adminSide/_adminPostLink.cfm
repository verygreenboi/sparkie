<cfoutput>
	<li id="post-menu">
		<div class="menuHeader">	
		<div class="adminmenuIcon">
		</div>
		
		#linkTo(route="list-post", text="Posts")#
		</div>
		<div class="subMenu">
			<ul>
				<li>#linkTo(route="edit-post", text="Add New")#</li>
				<li>#linkTo(route="list-post", text="All Posts")#</li>
				<li>#linkTo(route="category", text="Categories")#</li>
				<li>#linkTo(route="post-tags", text="Post Tags")#</li>
			</ul>
		</div>
	</li>
</cfoutput>