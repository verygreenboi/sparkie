<!---
	Here you can add routes to your application and edit the default one.
	The default route is the one that will be called on your application's "home" page.
--->

<!--- Login --->

<cfset addRoute(name="login", pattern="/admin/login", controller="session", action="login")>

<!--- Installation --->

<cfset addRoute(name="install", pattern="/admin/install", controller="session", action="install")>
<cfset addRoute(name="createInstall", pattern="/admin/createInstall", controller="session", action="createInstall")>

<!--- ##Dashboard routes --->

<!--- Post routes --->

<cfset addRoute(name="edit-post", pattern="admin/edit-post", controller="dash", action="editPost")>
<cfset addRoute(name="post", pattern="admin/post", controller="dash", action="Post")>
<cfset addRoute(name="list-post", pattern="admin/list-post", controller="dash",action="listPost")>

<!--- Category routes --->
<cfset addRoute(name="category", pattern="admin/cat", controller="categories",action="category")>

<!--- Post tags Routes --->

<cfset addRoute(name="post-tags", pattern="admin/post-tags", controller="tags",action="postTags")>

<!--- Comments routes --->

<cfset addRoute(name="comments", pattern="admin/listComments", controller="comments", action="comments")>

<!--- Dash index --->

<cfset addRoute(name="dash", pattern="/admin/dash", controller="dash", action="dashboard")>

<!--- Home Route --->

<cfset addRoute(name="home", pattern="", controller="home", action="index")>