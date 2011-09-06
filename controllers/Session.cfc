<cfcomponent extends="Controller" output="false">
	
	<cffunction name="init">
		<cfset filters(through="getInstallDir")>	
	</cffunction>

	<cffunction name="Install">

		
	</cffunction>
	
	<cffunction name="createInstall">
		
		<!--- <cfdump var="#params#" abort="true"> --->
		
		<!--- Sets values from params --->
		
		<cfset dsn = #params.dsn#>
		
		<cfif trim(params.password) neq #trim(params.passwordConfirmation)#>
		
			<cfset flashInsert(MatchError="The password does not match the confirmation!")>
			
			<cfset redirectTo(action="install")>
					
		<cfelseif trim(params.password) eq "">
		
			<cfset flashInsert(blankError="The password cannot be blank!")>
			
			<cfset redirectTo(action="install")>
					
		<cfelse>
		
			<cfset params.password = #hash(params.password, "MD5")#>
		
		</cfif>
		
		<!--- Create DB Tables --->
		
		<cfset createOptionTable()> 
		
		<cfset createPostTable()>
		
		<cfset createCommentTable()>
		
		<cfset createUserTable()>
		
		<!--- Append DSN to settings.cfm --->
		
		<cfset initAppendAndCreate()>
		
		<cfquery name="insertIntoOption" datasource="#dsn#">
			
			INSERT INTO `options` (`optionname`, `optionvalue`) VALUES
			('blogname', '#params.title#'),
			('blogdescription', '#params.tagline#'),
			('adminemail', '#params.email#')
			
		</cfquery>
		
		<cfquery name="insertIntoUser" datasource="#dsn#">
		
			INSERT INTO `users` (`userLogin`, `userPass`, `userNicename`, `userEmail`, `display_name`) VALUES
								('#params.user#', '#params.password#', '#params.user#', '#params.email#', '#params.user#')
			
		
		</cfquery>
		
		<!--- TODO: Remember to restart the app to make the dsn change take effect --->
		
		<cfset session.installed = "yes">
		
		<cfset redirectTo(route="dash")>
		
	</cffunction>
	
	<cffunction name="initAppendAndCreate">
	
		<!--- Points to various files to append dsn and write intall status --->
		
		<cfset settingsFile = #thisDirectory#&"config">
		
		<cfif #os# eq "Windows">
			<cfset dFile = "\settings.cfm">
		<cfelse>
			<cfset dFile = "/settings.cfm">
		</cfif>
		
		<cfset settingsFile = #settingsFile#&#dfile#>
		
		<cfset dsnFileContent = '<cfset set(dataSourceName="#dsn#")>'>
		
		<cfset installStatus = '<cfset installStatus="no">'>
		
		<cffile action="append" file="#settingsFile#" output="#dsnFileContent#">
		
		<cffile action="write" file="#setupCheck#" output="#installStatus#">

	</cffunction>
	
	<cffunction name="createOptionTable">
		
		<cfquery name="createOptionTable" datasource="#dsn#">
			
			CREATE TABLE IF NOT EXISTS `options` (
			  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
			  `optionname` varchar(64) NOT NULL DEFAULT '',
			  `optionvalue` longtext NOT NULL,
			  `createdAt` datetime NULL,
			  `updatedAt` datetime NULL,
			  `deletedAt` datetime NULL,
			  PRIMARY KEY (`id`),
			  UNIQUE KEY `optionname` (`optionname`)
			) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=329 ;
			
		</cfquery>
				
	</cffunction>
	
	<cffunction name="createPostTable">
	
		<cfquery name="createPostTable" datasource="#dsn#">
			CREATE TABLE IF NOT EXISTS `posts` (
			  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
			  `postAuthor` bigint(20) unsigned NOT NULL DEFAULT '0',
			  `createdAt` datetime NULL,
			  `postContent` longtext NOT NULL,
			  `postTitle` text NOT NULL,
			  `postExcerpt` text NOT NULL,
			  `postStatus` varchar(20) NOT NULL DEFAULT 'publish',
			  `commentStatus` varchar(20) NOT NULL DEFAULT 'open',
			  `postName` varchar(200) NOT NULL DEFAULT '',
			  `updatedAt` datetime NULL,
			  `deletedAt` datetime NULL,
			  `postParent` bigint(20) unsigned NOT NULL DEFAULT '0',
			  `guid` varchar(255) NOT NULL DEFAULT '',
			  `menuOrder` int(11) NOT NULL DEFAULT '0',
			  `postType` varchar(20) NOT NULL DEFAULT 'post',
			  `commentCount` bigint(20) NOT NULL DEFAULT '0',
			  PRIMARY KEY (`ID`),
			  KEY `postName` (`postName`),
			  KEY `postParent` (`postParent`),
			  KEY `postAuthor` (`postAuthor`)
			) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=217 ;
		</cfquery>
			
	</cffunction>
	
	<cffunction name="createCommentTable">
		
		<cfquery name="createCommentTable" datasource="#dsn#">
		
			CREATE TABLE IF NOT EXISTS `comments` (
			  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
			  `postID` bigint(20) unsigned NOT NULL DEFAULT '0',
			  `commentAuthor` tinytext NOT NULL,
			  `commentAuthorEmail` varchar(100) NOT NULL DEFAULT '',
			  `commentAuthorUrl` varchar(200) NOT NULL DEFAULT '',
			  `commentAuthorIP` varchar(100) NOT NULL DEFAULT '',
			  `createdAt` datetime NULL,
			  `updatedAt` datetime NULL,
			  `deletedAt` datetime NULL,
			  `commentContent` text NOT NULL,
			  `commentApproved` varchar(20) NOT NULL DEFAULT '1',
			  `commentAgent` varchar(255) NOT NULL DEFAULT '',
			  `commentParent` bigint(20) unsigned NOT NULL DEFAULT '0',
			  `userid` bigint(20) unsigned NOT NULL DEFAULT '0',
			  PRIMARY KEY (`ID`),
			  KEY `commentApproved` (`commentApproved`),
			  KEY `postID` (`postID`),
			  KEY `createdAt` (`createdAt`),
			  KEY `commentParent` (`commentParent`)
			) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

		
		</cfquery>
		
	</cffunction>
	
	<cffunction name="createUserTable">

		<cfquery name="createUserTable" datasource="#dsn#">
		
			CREATE TABLE IF NOT EXISTS `users` (
			  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
			  `userLogin` varchar(60) NOT NULL DEFAULT '',
			  `userPass` varchar(64) NOT NULL DEFAULT '',
			  `userNicename` varchar(50) NOT NULL DEFAULT '',
			  `userEmail` varchar(100) NOT NULL DEFAULT '',
			  `userUrl` varchar(100) NOT NULL DEFAULT '',
			  `createdAt` datetime NULL,
			  `updatedAt` datetime NULL,
			  `deletedAt` datetime NULL,
			  `user_activation_key` varchar(60) NOT NULL DEFAULT '',
			  `user_status` int(11) NOT NULL DEFAULT '0',
			  `display_name` varchar(250) NOT NULL DEFAULT '',
			  PRIMARY KEY (`ID`),
			  KEY `user_login_key` (`userLogin`)
			) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;
		
		</cfquery>
		
		<!--- TODO: Move this to Dash.cfc --->
		
		<!--- <cfquery name="createUserMetaTable">
			
			CREATE TABLE IF NOT EXISTS `usermeta` (
			  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
			  `userID` varchar(60) NOT NULL DEFAULT '',
			  `firstname` varchar(64) NOT NULL DEFAULT '',
			  `lastname` varchar(50) NOT NULL DEFAULT '',
			  `role` varchar(100) NOT NULL DEFAULT '',
			  `createdAt` datetime NULL,
			  `updatedAt` datetime NULL,
			  `deletedAt` datetime NULL,
			  PRIMARY KEY (`ID`))
			) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;
			
		</cfquery> --->
	
	</cffunction>
</cfcomponent>