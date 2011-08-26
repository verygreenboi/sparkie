<!--- Checks to see if config.cfm exists --->

<cfset thisPath = ExpandPath("*.*")> 
<cfset thisDirectory = GetDirectoryFromPath(thisPath)> 

<cfset config = "config.xml">

<cfset cookie.dir = #thisDirectory#>

<!--- If config.xml exists --->

<cfif fileExists(ExpandPath(config))>
	
	<!--- parse config.xml --->
	
	<cfset myxmldoc = XmlParse("#thisDirectory#config.xml")>
	<cfset dsn = XmlSearch(myxmldoc, "/config/dsn")>
	
	<!--- set values from config.xml --->
	
	<cfset dsn = #dsn[1]#>
<cfelse>
	
	<cflocation url="cfsp-admin/install.cfm">
</cfif>
