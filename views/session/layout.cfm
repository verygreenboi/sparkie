<cfoutput>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>#application.applicationname# || #params.action#</title>
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Le HTML5 shim, for IE6-8 support of HTML elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <!-- Le styles -->
	#stylesheetLinkTag("bootstrap-1.1.1")#

    <!-- Le fav and touch icons -->
    <link rel="shortcut icon" href="images/favicon.ico">
    <link rel="apple-touch-icon" href="images/apple-touch-icon.png">
    <link rel="apple-touch-icon" sizes="72x72" href="images/apple-touch-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="114x114" href="images/apple-touch-icon-114x114.png">
  </head>
</cfoutput>

<body>
	<div class="container">
		
		<cfif #params.action# eq "install">
			<cfoutput>#includePartial("../partials/hero")#</cfoutput>
		</cfif>
		<div class="row">
			<cfoutput>#includeContent()#</cfoutput>
		</div>
	</div>
	<footer>
	</footer>
</body>

</html>