<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<cfoutput>
			<cfset baseURLPath = Request.TrafficMunkey.get('baseURLPath') />
			<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
			<title>#Request.PageMunkey.get('title')#</title>
			<link href="#baseURLPath#jquery/jquery-ui-1.9.1.custom/css/codebountytheme/jquery-ui-1.9.1.custom.css" rel="stylesheet">
			<script src="#baseURLPath#jquery/jquery-ui-1.9.1.custom/js/jquery-1.8.2.js"></script>
			<script src="#baseURLPath#jquery/jquery-ui-1.9.1.custom/js/jquery-ui-1.9.1.custom.js"></script>
		
			<style>
				@font-face {font-family: 'code_pro_boldregular';
							src: url('#baseURLPath#fonts/code_pro_bold-webfont.eot');
							src: url('#baseURLPath#fonts/code_pro_bold-webfont.eot?##iefix') format('embedded-opentype'),
							url('#baseURLPath#fonts/code_pro_bold-webfont.woff') format('woff'),
							url('#baseURLPath#fonts/code_pro_bold-webfont.ttf') format('truetype'),
							url('#baseURLPath#fonts/code_pro_bold-webfont.svg##code_pro_boldregular') format('svg');
							font-weight: normal;
							font-style: normal;}
				
				@font-face {font-family: 'code_pro_lcregular';
							src: url('#baseURLPath#fonts/code_pro_lc-webfont.eot');
							src: url('#baseURLPath#fonts/code_pro_lc-webfont.eot?##iefix') format('embedded-opentype'),
							url('#baseURLPath#fonts/code_pro_lc-webfont.woff') format('woff'),
							url('#baseURLPath#fonts/code_pro_lc-webfont.ttf') format('truetype'),
							url('#baseURLPath#fonts/code_pro_lc-webfont.svg##code_pro_lcregular') format('svg');
							font-weight: normal;
							font-style: normal;}
			
				@font-face {font-family: 'code_pro_lightregular';
							src: url('#baseURLPath#fonts/code_pro_light-webfont.eot');
							src: url('#baseURLPath#fonts/code_pro_light-webfont.eot?##iefix') format('embedded-opentype'),
							url('#baseURLPath#fonts/code_pro_light-webfont.woff') format('woff'),
							url('#baseURLPath#fonts/code_pro_light-webfont.ttf') format('truetype'),
							url('#baseURLPath#fonts/code_pro_light-webfont.svg##code_pro_lightregular') format('svg');
							font-weight: normal;
							font-style: normal;}
				
				body{ color:##000000; font-family:code_pro_lcregular, Helvetica, sans-serif; background-color:##EEEEEE; padding:0px; margin:0px}
				##header{background-color:##453D2A; min-height: 75px; position:fixed; top:0px; width:100%; text-align:center; z-index: 999;}
				##headerForms{ float:right; margin-right: 45px; margin-top:20px; width:343px; text-align:right}
				##main{ padding: 1em 1em; max-width: 1020px; margin: auto; margin-top: 75px; }
				##mainImage{ margin-top: 75px; background-color:##EEEEEE; height:100%; text-align:center}
				##orangeIcons{ background-color:##FDFBDB; height:100%; text-align:center; padding:-150px}
				##techologyLogos{ background-color:##453D2A; height:100%; text-align:center}
				##infoGraphic{ margin-bottom: -1em; background-color:##FFFFFF; height:100%; text-align:center}
				##footer{ background-color:##453D2A; height:50px; margin-top: 75px; }
				##searchString{ color:##333333}
				.codeBountyLogo{ float:left}
				.hugeFont{ color:##FFFFFF; font-size:64px}
				a{border:none; font-family:code_pro_boldregular, Helvetica, sans-serif;}
				h1{font-family:code_pro_boldregular, Helvetica, sans-serif;}
				h2{font-family:code_pro_boldregular, Helvetica, sans-serif;}
				h3{font-family:code_pro_boldregular, Helvetica, sans-serif;}
				h4{font-family:code_pro_boldregular, Helvetica, sans-serif;}
				img{border:none}
				.boldText{font-family:code_pro_boldregular, Helvetica, sans-serif;}
				.lowerCaseText{font-family:code_pro_lightregular, Helvetica, sans-serif;}
				.lightText{font-family:code_pro_lightregular, Helvetica, sans-serif;}
				button.ui-state-default { background-color: ##EEEEEE; display: inline-block; vertical-align: middle; }
				fieldset{border:thin solid ##F04E23}
			</style>
		</cfoutput>
	</head>
	
	<body>
			<div id="header">
				<div class="codeBountyLogo">
					<cfoutput>
						<a href="#baseURLPath#"><img src="#baseURLPath#images/CodeBountyLogo.jpg" /></a>
					</cfoutput>
				</div>
				<div id="headerForms">
					<cfoutput>
						<cfif StructKeyExists(Session, "User") and Session.User.exists('name')>
							<cfset name = Session.User.get('name') />
							<form id="mainLogout" method="get" action="#baseURLPath#logout.cfm">
								<a href="#baseURLPath#profile.cfm" style="color:white;">
									<cfif Len(name)>#Session.User.get('name')#<cfelse>My Account</cfif>
								</a>
								<button class="ui-state-default ui-corner-all" type="submit">Logout</button>
							</form>
						<cfelse>
							<form id="mainLogin" method="get" action="#baseURLPath#login.cfm">
								<button class="ui-state-default ui-corner-all" type="submit">Login</button>
							</form>
						</cfif>
					</cfoutput>
				</div>
				<cfinclude template="search_form.cfm" />
				<!---
				<cfoutput>
				<form id="mainSearch" style="padding-top:20px; text-align:center" action="#Request.LinkMunkey.get('search').get('url')#">
					<select name="Product.Product_ID">
						<option value="">All Platforms</option>
						<option value="1">WordPress</option>
						<option value="2">Joomla</option>
						<option value="3">jQuery</option>
						<option value="4">Salesforce</option>
						<option value="5">Facebook</option>
					</select>
					<input type="search" placeholder="Find your solution" id="searchString" name="searchString"  />
					<button class="ui-state-default ui-corner-all" type="submit">
						<!--- <span class="ui-icon ui-icon-search">Search</span> --->
						Search
					</button>
				</form>
				</cfoutput>
				--->
			</div>
			<cfoutput>#Request.PageMunkey.get('body')#</cfoutput>
			<div id="footer">
				
			</div>
	<!--- <cfdump var="#Session.User#"> --->
	</body>
</html>