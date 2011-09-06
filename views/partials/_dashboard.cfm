<cfoutput>

	<aside class="sidebar">
		<ul id="adminMenu">
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
			
			<li class="seperator">
			
			<li id="post-menu">
				<div class="menuHeader">	
				<div class="adminmenuIcon">
				</div>
				
				#linkTo(route="edit-post", text="Posts")#
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
			
			<li id="comment-menu">
				<div class="menuHeader">
					<div class="adminmenuIcon">
					</div>
					
					#linkTo(route="comments", text="Comments")#
					
				</div>
			</li>
			
		</ul>
	</aside>

</cfoutput>