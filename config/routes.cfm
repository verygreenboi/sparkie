<!---
	Here you can add routes to your application and edit the default one.
	The default route is the one that will be called on your application's "home" page.
--->
<cfset addRoute(name="install", pattern="/admin/install", controller="session", action="install")>
<cfset addRoute(name="createInstall", pattern="/admin/createInstall", controller="session", action="createInstall")>
<cfset addRoute(name="home", pattern="", controller="home", action="index")>