<!---
	Here you can add routes to your application and edit the default one.
	The default route is the one that will be called on your application's "home" page.
--->
<cfset addRoute(name="install", pattern="/admin/install", controller="session", action="install")>
<cfset addRoute(name="createInstall", pattern="/admin/createInstall", controller="session", action="createInstall")>
<cfset addRoute(name="edit-post", pattern="admin/edit-post", controller="dash", action="editPost")>
<cfset addRoute(name="list-post", pattern="admin/list-post", controller="dash",action="listPost")>
<cfset addRoute(name="category", pattern="admin/cat", controller="dash",action="category")>
<cfset addRoute(name="post-tags", pattern="admin/post-tags", controller="dash",action="postTags")>
<cfset addRoute(name="dash", pattern="/admin/dash", controller="dash", action="dashboard")>
<cfset addRoute(name="home", pattern="", controller="home", action="index")>