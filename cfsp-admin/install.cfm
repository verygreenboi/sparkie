<!--- Installs sparkie and creates a config.xml file --->

<cfxml variable="xmlData"> 
    <docroot> 
        <payload type="string">This is some plain text</payload> 
    </docroot> 
</cfxml> 
<cfset xmlString = toString(xmlData)> 

<!--- Creates config.xml --->

<cffile action="write"
		addnewline="yes"
		file="#cookie.dir#config.xml"
		output="#xmlString#" fixnewline="yes"	>