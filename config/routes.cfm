<!---
	Here you can add routes to your application and edit the default one.
	The default route is the one that will be called on your application's "home" page.
--->
<!--- LOGIN ROUTES --->
<cfset addRoute(name="login", pattern="/admin/login", controller="sessions", action="new")>
<cfset addRoute(name="login_path", pattern="/admin/doLogin", controller="sessions", action="create")>
<cfset addRoute(name="logout", pattern="/admin/logout", controller="sessions", action="destroy")>

<cfset addRoute(name="home", pattern="", controller="wheels", action="wheels")>