<cfcomponent extends="MillionMunkeys.PiMunkey_1_5.PiComponent">
	<cfset addListener("code", this, "queryAccessToken") />
	<cfset addListener("access_token", this, "queryProfiles") />
	<cfset addListener("profile", this, "queryProfile") />
	<cfset addFilter("query", this, "toQuery") />
	<cffunction name="success">
		<cfset var my=StructNew() />
		<cfset this.set('code', URL.code) />
		<cfset this.remove("query") />
		<cftry>
			<cfquery datasource="#Request.TrafficMunkey.get('dsn')#" name="CreateUser" result="my.result">
			INSERT INTO USER (
				name,
				profile_image,
				email
			)
			VALUES (
				'#this.get("name")#',
				'#this.get("image")#',
				'#this.get("email")#'
			)
			</cfquery>
			<cfset this.set('user_id', my.result.GENERATED_KEY) />
			<cfcatch>
				<cfdump var="#this.toStruct()#">
				<cfdump var="#cfcatch#">
				<cfabort>
			</cfcatch>
		</cftry>
		<!--- <cfdump var="#this.toStruct()#" /> --->
		<cflocation url="#Request.LinkMunkey.get('success').get('url')#" addtoken="no" />
	</cffunction>
	<cffunction name="queryAccessToken">
		<cfargument name="object" />
		<cfargument name="property" />
		<cfargument name="oldValue" />
		<cfargument name="newValue" />
		<cfhttp method="post" url="https://api.singly.com/oauth/access_token">
			<cfhttpparam name="client_id" type="formfield" value="a1585e35cb06673ee29b37313b193fe5" />
			<cfhttpparam name="client_secret" type="formfield" value="84aa15d50839564265fd3e32a7adcf7f" />
			<cfhttpparam name="code" type="formfield" value="#URL.code#" />
		</cfhttp>
		<cfset this.set( ArgumentCollection=DeserializeJSON(cfhttp.FileContent) ) />
	</cffunction>
	<cffunction name="queryProfiles">
		<cfargument name="object" />
		<cfargument name="property" />
		<cfargument name="oldValue" />
		<cfargument name="newValue" />
		<cfset var my = StructNew() />
		<cfhttp method="get" url="https://api.singly.com/profiles?access_token=#Arguments.newValue#" />
		<cfset my.profiles = DeserializeJSON(cfhttp.FileContent) />
		<cfloop list="#StructKeyList(my.profiles)#" index="my.profile">
			<cfif my.profile neq "id">
				<cfset this.set("profile", my.profile) />
			</cfif>
		</cfloop>
	</cffunction>
	<cffunction name="queryProfile">
		<cfargument name="object" />
		<cfargument name="property" />
		<cfargument name="oldValue" />
		<cfargument name="newValue" />
		<cfset var my=StructNew() />
		<cfhttp method="get" url="https://api.singly.com/profiles/#Arguments.newValue#?access_token=#get('access_token')#" />
		<cftry>
			<cfset my.data = DeserializeJSON(cfhttp.FileContent).data />
			<cfparam name="my.data.name" default="" />
			<cfparam name="my.data.image" default="" />
			<cfparam name="my.data.email" default="" />
			<cfswitch expression="#Arguments.newValue#">
				<cfcase value="linkedin">
					<cfset this.set( id=my.data.id, name="#my.data.firstName# #my.data.lastName#", image=my.data.pictureUrl ) />
				</cfcase>
				<cfcase value="facebook">
					<cfset this.set( id=my.data.id, name=my.data.name, email=my.data.email, image=my.data.picture.data.url, facebook=my.data.link ) />
				</cfcase>
				<cfcase value="github">
					<cfset this.set( id=my.data.id, name=my.data.name, email=my.data.email, image=my.data.avatar_url, github=my.data.html_url ) />
				</cfcase>
				<cfcase value="google">
					<cfset this.set( id=my.data.id, name=my.data.name, email=my.data.email ) />
				</cfcase>
				<cfcase value="twitter">
					<cfset this.set( id=my.data.id, name=my.data.name, image=my.data.profile_image_url, twitter="http://www.twitter.com/#my.data.screen_name#" ) />
				</cfcase>
			</cfswitch>
			<cfcatch>
				<cfdump var="#cfcatch#" />
				<cfdump var="#DeserializeJSON(cfhttp.FileContent)#" />
				<cfabort>
			</cfcatch>
		</cftry>
	</cffunction>
	
	<cffunction name="toQuery">
		<cfargument name="value" default="" />
		<cfset var my = StructNew() />
		<cfif not isQuery(Arguments.value) and this.exists('user_id')>
			<cfquery name="Arguments.value" datasource="">
			SELECT * FROM User WHERE user_id = #this.get('user_id')#
			</cfquery>
			<cfreturn Arguments.value />
		</cfif>
	</cffunction>
</cfcomponent>