<!---
	Here you can add routes to your application and edit the default one.
	The default route is the one that will be called on your application's "home" page.
--->
<!--- ##Dashboard routes --->

<cfset addRoute(name="blog-settings", pattern="/admin/settings", controller="dash", action="settings")>

<!--- Login --->

<cfset addRoute(name="login", pattern="/admin/login", controller="session", action="login")>

<!--- Installation --->

<cfset addRoute(name="install", pattern="/admin/install", controller="session", action="install")>
<cfset addRoute(name="createInstall", pattern="/admin/createInstall", controller="session", action="createInstall")>

<!--- Pages Route --->

<cfset addRoute(name="listPages", pattern="/admin/list-pages", controller="dash", action="listPages")>

<!--- Post routes --->

<cfset addRoute(name="edit-post", pattern="admin/edit-post", controller="dash", action="editPost")>
<cfset addRoute(name="post", pattern="admin/post", controller="dash", action="Post")>
<cfset addRoute(name="list-post", pattern="admin/list-post", controller="dash",action="listPost")>

<!--- User routes --->

<cfset addRoute(name="add-user", pattern="admin/add-users", controller="dash", action="addUsers")>
<cfset addRoute(name="user-profile", pattern="admin/profile/[userid]", controller="dash", action="profile")>
<cfset addRoute(name="list-user", pattern="admin/list-users", controller="dash",action="listUsers")>
<cfset addRoute(name="edit-Profile", pattern="admin/edit-Profile", controller="dash", action="editProfile")>

<!--- Category routes --->
<cfset addRoute(name="category", pattern="admin/cat", controller="dash",action="category")>

<!--- Post tags Routes --->

<cfset addRoute(name="post-tags", pattern="admin/post-tags", controller="dash",action="postTags")>

<!--- Comments routes --->

<cfset addRoute(name="comments", pattern="admin/listComments", controller="dash", action="comments")>

<!--- Dash index --->

<cfset addRoute(name="dash", pattern="/admin", controller="dash", action="dashboard")>

<!--- Home Route --->

<cfset addRoute(name="home", pattern="", controller="home", action="index")>