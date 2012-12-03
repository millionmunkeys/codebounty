<cfimport prefix="" taglib="/MillionMunkeys/FormMunkey_2_13/" />

<style>
	input{margin:5px}
	label{margin:5px}
</style>

<cfset URL['User.User_id'] = Session.User.get('user_id') />
<cfoutput>
<form name="userProfile" method="post" datasource="#Request.TrafficMunkey.get('dsn')#">
	<fieldset query="User" storage="User" addrow="false">
		<legend title="User Profile">User Profile</legend>
		<div style="float:left; width: 48%; margin: auto;">
			<img src="#User.profile_image#" width="64" /><!--- <input type="file" name="User.profile_image" /> ---><br />
			<input type="text" name="User.name" style="width:200px" /><label for="User.name"> : Name</label><br />
			<input type="text" name="User.email" style="width:200px" /><label for="User.email"> : Email</label><br />
		</div>	
		<div style="float:right; width: 48%; margin: auto; text-align: right;">
			<label for="facebook">Facebook : </label>http://<input type="text" name="facebook" id="facebook" value="#Session.User.get('facebook')#" /><br />
			<label for="LinkedIn">LinkedIn : </label>http://<input type="text" name="LinkedIn" id="LinkedIn" value="#Session.User.get('LinkedIn')#" /><br />
			<label for="GetHub">GitHub : </label>http://<input type="text" name="GetHub" id="GetHub" value="#Session.User.get('GetHub')#" /><br />
			<label for="Twitter">Twitter : </label>http://<input type="text" name="Twitter" id="Twitter" value="#Session.User.get('Twitter')#" /><br />
			<!--- <label for="googlePlus"> : Google+</label>http://<input type="text" name="googlePlus" id="googlePlus" value="#Session.User.get('googlePlus')#" /><br /> --->
		</div>
	</fieldset>
	
	<div class="actions" style="text-align: center; clear: both;">
		<input type="submit" value="Save" />
		<input type="reset" value="Cancel" />
	</div>

	<fieldset>
		<legend title="Tags">Tags</legend>
		<cfloop list="wordpress,joomla,salesforce,android,iOS,blackberry" index="i">
			<div style="color:##FFFFFF; background-color:##F04E23; float:left; padding:5px; margin:5px">#i#</div>
		</cfloop>
	</fieldset>
	
	<fieldset>
		<legend title="Open Projects">My Bounties</legend>
		<cfset StructClear(URL) />
		<cfset URL['Project.User_ID'] = Session.User.get('user_id') />
		<div style="overflow:scroll"><cfinclude template="list.cfm" /></div>
	</fieldset>
	<fieldset>
		<legend title="Open Projects">Coding Projects</legend>
		<cfset StructClear(URL) />
		<cfset URL['Version.User_ID'] = Session.User.get('user_id') />
		<cfset tables="Version,Project,Product" />
		<div style="overflow:scroll"><cfinclude template="list.cfm" /></div>
	</fieldset>
</form>
</cfoutput>