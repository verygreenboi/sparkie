<cfoutput>

	<aside class="sidebar">
		<ul id="adminMenu">
			<li class="first">
				<div class="menuHeader">
					<div class="adminmenuIcon">
						#linkTo(text=imageTag(source="twitter_16.png"), route="dash")#
					</div>
					
					#linkTo(route="dash", text="Dashboard")#
				</div>
				<div class="subMenu">
					<ul class="subMenu">
						#linkTo(route="dash", text="Home")#
					</ul>
				</div>
			</li>
			
			<li>
				<div class="adminmenuIcon">
				</div>
				
				#linkTo(route="edit-post", text="Posts")#
				<div class="subMenu">
					<ul>
						<li>#linkTo(route="edit-post", text="Add New")#</li>
						<li>#linkTo(route="list-post", text="All Posts")#</li>
						<li>#linkTo(route="category", text="Categories")#</li>
						<li>#linkTo(route="post-tags", text="Post Tags")#</li>
					</ul>
				</div>
			</li>
			
		</ul>
	</aside>

</cfoutput>