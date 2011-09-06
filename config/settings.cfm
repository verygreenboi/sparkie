<!---
	If you leave these settings commented out, Wheels will set the data source name to the same name as the folder the application resides in.
	<cfset set(dataSourceName="sparkie")>
	<cfset set(dataSourceUserName="")>
	<cfset set(dataSourcePassword="")> 
--->

<!---
	If you leave this setting commented out, Wheels will try to determine the URL rewrite capabilities automatically.
	The URLRewriting setting can bet set to "On", "Partial" or "Off".
	To run with "Partial" rewriting, the "PATH_INFO" variable needs to be supported by the web server.
	To run with rewriting "On", you need to apply the necessary rewrite rules on the web server first.
	<cfset set(URLRewriting="Partial")>
--->

<cfset set(URLRewriting="on")>

<!--- Form Helpers --->

<cfset set(functionName="textfieldtag", labelPlacement="before", prependToLabel="<div class='clearfix'>", append="</div>")>
<cfset set(functionName="Passwordfieldtag", labelPlacement="before", prependToLabel="<div class='clearfix'>", append="</div>")><cfset set(dataSourceName="sparkie")>
