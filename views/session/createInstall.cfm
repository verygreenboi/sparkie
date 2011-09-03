<cfoutput>
	
	<!--- TODO: Find out how to handle installation in subDir withouth hardcoding. --->
	
	<script type="text/javascript">
		var siteURL = "http://"+ top.location.host.toString(),
			redirect = siteURL+"/sparkie/admin/dash/?reload=true";
			
		window.location = redirect;
	</script>
</cfoutput>