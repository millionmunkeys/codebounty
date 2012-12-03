<cfcomponent extends="MillionMunkeys.TrafficMunkey_1_7.Application">
	<cfset this.SessionManagement = true />
	<cfset this.SessionTimeout = CreateTimeSpan(0,1,0,0) />
	<cfset this.name = "AngelHack" />

	<cffunction name="onApplicationStart">
		<cfset Super.onApplicationStart(ArgumentCollection=Arguments) />
		<!--- Initialize mappings --->
		<cfset Application.mappings = StructNew() />
		<!--- Email Values --->
		<cfset Application.EmailServer = "mail.google.com" />
		<cfset Application.AdminEmail = "pete@millionmunkeys.net,kcenter@gmail.com" />
		<!--- Server-specific settings --->
		<!--- Datasource --->
		<cfset Application.dsn = "angelhack" />
		<!--- Execution Mode --->
		<cfset Application.mode = "production" />
	</cffunction>
	
	<cffunction name="onError">
		<cfargument name="Exception" type="any" required="true" />
		<cfargument name="EventName" type="string" required="false" default="" />
		<cfset var content = "" />
		<cfset Arguments.targetPath = ExpandPath(CGI.SCRIPT_NAME) />
		<cfset Arguments.baseFilePath = GetDirectoryFromPath(GetCurrentTemplatePath()) />
		<cfset Arguments.targetURL = Right(Arguments.targetPath, Len(Arguments.targetPath) - Len(Arguments.baseFilePath) ) />
		<cfset Arguments.baseURLPath = Left(CGI.SCRIPT_NAME, Len(CGI.SCRIPT_NAME) - Len(Arguments.targetURL) ) />
		<cfsavecontent variable="content">
			<cfdump var="#Arguments#" label="Exception">
			<cfdump var="#CGI#" label="CGI" />
			<cfdump var="#URL#" label="URL" />
			<cfdump var="#Form#" label="Form" />
			<cfdump var="#Session#" label="Session" />
		</cfsavecontent>
			<cfoutput>#content#</cfoutput>
			<cfabort>
		<cfinclude template="SiteConfig.cfm">
		<cfif CGI.SERVER_NAME eq "localhost">
		<cfelse>
			<cfmail server="#Application.EmailServer#" to="#Application.AdminEmail#" subject="FigmentalStage.com Error!!!" from="#Application.FromEmail#" type="html" username="#Application.EmailAccount#" password="#Application.EmailPassword#">
			<cfoutput>#content#</cfoutput>
			</cfmail>
			<cfif CGI.SCRIPT_NAME eq "/" or CGI.SCRIPT_NAME eq "/index.cfm">
				<cfoutput><cfinclude template="Error.cfm" /></cfoutput>
			<cfelse>
				<cflocation url="#Arguments.baseURLPath#" addtoken="no" />
			</cfif>
		</cfif>
	</cffunction>
	
	<cffunction name="onRequest">
		<cfargument name="targetPage" type="String" required=true/>
		<cfargument name="baseFilePath" type="string" required="no" default="#GetDirectoryFromPath(GetCurrentTemplatePath())#" hint="This line is required for Railo." />
		<cfset Application.SessionTimeout = CreateTimeSpan(0,1,0,0) />
		<cfset super.onRequest(ArgumentCollection=Arguments) />
		<cfinclude template="SiteConfig.cfm" />
		<cfif not StructKeyExists(Request,"mode")>
			<cfset Request.mode = Application.mode />
		</cfif>
		<cfinclude template="index.cfm" />
	</cffunction>
	
</cfcomponent>