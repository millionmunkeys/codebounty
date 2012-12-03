<div id="main">

<style>
	input{margin:5px}
	label{margin:5px}
</style>

<form name="userProfile" id="userProfile" method="post" action="/profile.cfm?">
			
			<input type="hidden" name="FormDataID" value="userProfile">
			<fieldset>
		<legend title="User Profile">User Profile</legend>
		<div style="float:left; width: 48%; margin: auto;">
			<img src="http://a0.twimg.com/profile_images/1449855123/me_normal.jpg" width="64"><br>
			<input style="width:200px" name="User.name.1" type="text" value="M. Chase Whittemore"> <label for="User.name"> : Name</label><br>
			<input style="width:200px" name="User.email.1" type="text" value="mcwhittemore@gmail.com"> <label for="User.email"> : Email</label><br>
		</div>	
		<div style="float:right; width: 48%; margin: auto; text-align: right;">
			<label for="facebook">Facebook : </label>http:// <input id="facebook" name="facebook.1" type="text" value=""> <br>
			<label for="LinkedIn">LinkedIn : </label>http:// <input id="LinkedIn" name="LinkedIn.1" type="text" value=""> <br>
			<label for="GetHub">GitHub : </label>http:// <input id="GetHub" name="GetHub.1" type="text" value="github.com/mcwhittemore/angel-hack-test/archive/master.zip"> <br>
			<label for="Twitter">Twitter : </label>http:// <input id="Twitter" name="Twitter.1" type="text" value="www.twitter.com/mcwhittemore"> <br>
			
		</div>
	</fieldset> 
	
	<div class="actions" style="text-align: center; clear: both;">
		<input type="submit" value="Save"> <input type="reset" value="Cancel"> 
	</div>

	<fieldset>
		<legend title="Tags">Tags</legend>
		
			<div style="color:#FFFFFF; background-color:#F04E23; float:left; padding:5px; margin:5px">wordpress</div>
		
			<div style="color:#FFFFFF; background-color:#F04E23; float:left; padding:5px; margin:5px">joomla</div>
		
			<div style="color:#FFFFFF; background-color:#F04E23; float:left; padding:5px; margin:5px">salesforce</div>
		
			<div style="color:#FFFFFF; background-color:#F04E23; float:left; padding:5px; margin:5px">android</div>
		
			<div style="color:#FFFFFF; background-color:#F04E23; float:left; padding:5px; margin:5px">iOS</div>
		
			<div style="color:#FFFFFF; background-color:#F04E23; float:left; padding:5px; margin:5px">blackberry</div>
	</fieldset>
	<fieldset>
		<legend title="Open Projects">My Bounties</legend>
		
		<div >

<script type="text/javascript">
   $(document).ready(function () {
		$(".viewButton").button();
    });
</script>

<style>
	.projectSummary
	{
		border-style: dotted hidden hidden;
		border-color: red;
		border-width: 1px;
		width: 800px;
		height: 100px;
		margin: auto;
		clear: both;
	}
	.projectSummary label
	{
		font-weight: bold; 
		font-size: 20px;
	}

	.viewButton
	{
		float: right;
	}
	
	.projectData
	{
		clear: both;
	}
	.pitchAmount
	{
		border-style: solid;
		border-color: #F04E23;
		border-width: 1px;
		float: left;
		width: 70px;
		height: 30px;
		text-align: center;
		color:#F04E23;
		font-weight: bold;
		font-size: 20px;
	}
	.neededBy
	{
		float: right;
		height: 40px;
		text-align: center;
		font-size: 20px;
	}
	.productLogo {
		text-align: center;
		margin: auto;
	}
	.productLogo img {
		height: 25px;
	}
	
	.description {
	   margin: 20px;
	   margin-left: 0px;
	
	}
	.projectSummary{
	   padding-top:18px;
	}

</style>


<script>

function next(){
	var html = $("#removethis").html();
	html = "<div class='ui-state-error'>THANKS!<br>Your build is being sent to your 12 customers for review. They will have 10 bussiness days to review your code. Please respond to their questions promptly.</div><br><br>"+html;
	$("#removethis").html(html);
	$("#finishButton").html("Submitted").attr('onclick', 'JAVASCRIPT:false;');
}

</script>

</div>
	</fieldset> 
		<fieldset>
		<legend title="Open Projects">Coding Projects</legend>
		
		<div >
			<div class="projectSummary" id="removethis">
			<div class="viewButton ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only" role="button" aria-disabled="false">
				<span class="ui-button-text">
					<a id="finishButton" onclick="JAVASCRIPT:next();">Finsih</a>
				</span>
			</div>

		<label class="title"> <input type="hidden" name="Project.Title.1" value="Add the ability to capture customers email addresses in our word press survey pluggin."> <span>Add the ability to capture customers email addresses in our word press survey pluggin.</span> </label>
		<div class="description"> <input type="hidden" name="Project.Description.1" value="We use an existing, open source, wordpress survey plugin on our website call surveyist. Customers can rate their experiences with our company from 1-10. Unfortunately we cannot capture any contact information, so we cannot follow up with customers who had a bad experience, in order to improve our customer relationship with them.

Unfortunately, the company who created the plugin is no longer in business and we have not been able to get in touch with anyone willing to upgrade our plug in. In short, we need the ability to capture our customer's email address and then view them in relationship to the associated survey data."> <span>We use an existing, open source, wordpress survey plugin on our website call surveyist. Customers can rate their experiences with our company from 1-10. Unfortunately we cannot capture any contact information, so we cannot follow up with customers who had a bad experience, in order to improve our customer relationship with them.

Unfortunately, the company who created the plugin is no longer in business and we have not been able to get in touch with anyone willing to upgrade our plug in. In short, we need the ability to capture our customer's email address and then view them in relationship to the associated survey data.</span> </div>
		
		<div class="projectData">
			<div class="pitchAmount"> <input type="hidden" name="Project.Total_Bounty.1" value="196.0"> <span>196.0</span> </div>
			
			<div class="productLogo">
				<input type="hidden" name="Product.logo.1" value="http://angelhack.millionmunkeys.net/images/platforms/platforms_r7_c5.gif"> <img src="http://angelhack.millionmunkeys.net/images/platforms/platforms_r2_c2.gif"> 
			</div>
		</div>
	</div>
<script type="text/javascript">
   $(document).ready(function () {
		$(".viewButton").button();
    });
</script>

<style>
	.projectSummary
	{
		border-style: dotted hidden hidden;
		border-color: red;
		border-width: 1px;
		width: 800px;
		height: 100px;
		margin: auto;
		clear: both;
	}
	.projectSummary label
	{
		font-weight: bold; 
		font-size: 20px;
	}

	.viewButton
	{
		float: right;
	}
	
	.projectData
	{
		clear: both;
	}
	.pitchAmount
	{
		border-style: solid;
		border-color: #F04E23;
		border-width: 1px;
		float: left;
		width: 70px;
		height: 30px;
		text-align: center;
		color:#F04E23;
		font-weight: bold;
		font-size: 20px;
	}
	.neededBy
	{
		float: right;
		height: 40px;
		text-align: center;
		font-size: 20px;
	}
	.productLogo {
		text-align: center;
		margin: auto;
	}
	.productLogo img {
		height: 25px;
	}
	
	.description {
	   margin: 20px;
	   margin-left: 0px;
	
	}
	.projectSummary{
	   padding-top:18px;
	}

</style>
</div>
	</fieldset> </form> 
		<script type="text/javascript">
			// <![CDATA[
			// Define Global Functions
			if (typeof(String.prototype.trim) == "undefined") {
				String.prototype.trim=function() {
					return this.replace(/^(\s)+/,"").replace(/(\s)+$/,"");
				}
			}

			if (typeof(Condition) == "undefined") {
				Condition=function(conditionId,type,value,casesensitive) {
					this.conditionId=conditionId;
					this.type=type.toLowerCase();
					this.casesensitive=casesensitive?true:false;
					if (!this.casesensitive)
						this.value=value.toLowerCase();
					else
						this.value=value;
					this.cache=new Object();
					// Define type-sensitive properties and methods
					switch (this.type) {
						case "blank":
							if (this.value == "true") {
								this.exclusive=true;
								this.checkvalue=this.checkblank;
							}
							else {
								this.exclusive=false;
								this.checkvalue=function(value) {
									return !this.checkblank(value);
								}
							}
							break;
						case "options":
							/* At this time I do not see a reason to have options act differently than only.
							this.exclusive=false;
							this.optionsArray=this.value.split(",");
							for (var i=0; i<this.optionsArray.length; i++)
								this.optionsArray[i]=this.optionsArray[i].trim();
							this.checkvalue=this.checkoptions;
							break;
							*/
						case "only":
							this.exclusive=true;
							this.optionsArray=this.value.split(",");
							for (var i=0; i<this.optionsArray.length; i++)
								this.optionsArray[i]=this.optionsArray[i].trim();
							this.checkvalue=this.checkoptions;
							break;
						case "exclude":
							this.exclusive=true;
							this.optionsArray=this.value.split(",");
							for (var i=0; i<this.optionsArray.length; i++)
								this.optionsArray[i]=this.optionsArray[i].trim();
							this.checkvalue=function(value) {
								return !this.checkoptions(value);
							}
							break;
						case "minvalue":
							this.exclusive=true;
							this.minvalue=this.value.trim();
							this.checkvalue=this.checkminvalue;
							break;
						case "maxvalue":
							this.exclusive=true;
							this.maxvalue=this.value.trim();
							this.checkvalue=this.checkmaxvalue;
							break;
						case "minlength":
							this.exclusive=true;
							this.minlength=this.value.trim();
							this.checkvalue=this.checkminlength;
							break;
						case "maxlength":
							this.exclusive=true;
							this.maxlength=this.value.trim();
							this.checkvalue=this.checkmaxlength;
							break;
						case "format":
							this.exclusive=true;
							this.format=this.value.trim().toLowerCase();
							this.checkvalue=this.checkformat;
							break;
					}
				}
				Condition.prototype.checkvalues=function(valueList) {
					if ( typeof(valueList) == "undefined" )
						return false;
					if ( !this.casesensitive )
						valueList=valueList.toLowerCase();
					if ( typeof(this.cache[valueList]) == "undefined" ) {
						// alert("Checking field values: "+valueList);
						var valueArray=valueList.split(",");
						var result = null;
						var value;
						for (var vi=0; vi<valueArray.length; vi++) {
							value=valueArray[vi].trim();
							// alert("Result for Value '"+value+"': "+this.checkvalue(value));
							if ( this.exclusive && this.checkvalue(value) == false ) {
								result = false;
								break;
							}
							else if ( !this.exclusive && this.checkvalue(value) == true ) {
								result = true;
								break;
							}
						}
						if ( result == null ) {
							if ( this.exclusive )
								result = true;
							else
								result = false;
						}
						this.cache[valueList] = result;
					}
					return this.cache[valueList];
				}
				Condition.prototype.checkblank=function(value) {
					if ( value != "" )
						return false;
					return true;
				}
				Condition.prototype.checkoptions=function(value) {
					// alert("Condition type: "+this.type);
					// alert("Condition values to check: "+this.optionsArray.join());
					for (var i=0; i<this.optionsArray.length; i++) {
						if ( this.optionsArray[i] == value )
							return true;
					}
					return false;
				}
				Condition.prototype.checkminvalue=function(value) {
					if ( value != "" ) // We don't validate existance, only format of existing data.
						var value_no=parseFloat(value);
						var minvalue_no=parseFloat(this.minvalue);
						if ( value == value_no && this.minvalue == minvalue_no ) {
							if ( value_no < minvalue_no )
								return false;
						}
						else {
							if ( value < this.minvalue )
								return false;
						}
					return true;
				}
				Condition.prototype.checkmaxvalue=function(value) {
					if ( value != "" ) // We don't validate existance, only format of existing data.
						var value_no=parseFloat(value);
						var maxvalue_no=parseFloat(this.maxvalue);
						if ( value == value_no && this.maxvalue == maxvalue_no ) {
							if ( value_no > maxvalue_no )
								return false;
						}
						else {
							if ( value > this.maxvalue )
								return false;
						}
					return true;
				}
				Condition.prototype.checkminlength=function(value) {
					if ( value != "" ) // We don't validate existance, only format of existing data.
						if ( value.length < parseInt(this.minlength) )
							return false;
					return true;
				}
				Condition.prototype.checkmaxlength=function(value) {
					if ( value != "" ) // We don't validate existance, only format of existing data.
						if ( value.length > parseInt(this.maxlength) )
							return false;
					return true;
				}
				Condition.prototype.checkformat=function(value) {
					if ( value != "" ) { // We don't validate existance, only format of existing data.
						switch (this.format) {
							case "number":
							case "numeric":
								if ( /^\d+$/.test(value) == false )
									return false;
								break;
							case "email":
								var emailRegExp=/^[a-zA-Z0-9\-_\'\.]+@[a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)*\.([a-zA-Z]{2}|com|edu|gov|int|mil|net|org|shop|aero|biz|coop|info|museum|name|shop|arpa|pro|mobi|jobs|travel)$/; // '
								if ( emailRegExp.test(value) == false )
									return false;
								break;
							case "phone":
							case "phonenumber":
							case "phone number":
								var strippedphone=value.replace(/[ \-]/g,"");
								if ( /^((1)?(\([0-9a-pr-yA-PR-Y]{3}\)|[-]?[0-9a-pr-yA-PR-Y]{3}[-]?))?[0-9a-pr-yA-PR-Y]{3}[-]?[0-9a-pr-yA-PR-Y]{4}$/.test(strippedphone) == false && /^[0-9a-pr-yA-PR-Y]{10,}$/.test(strippedphone) == false )
									return false;
								break;
							case "name":
								if ( /^[a-zA-Z''\-. ]+$/.test(value) == false )
									return false;
								break;
							case "alphanumeric":
								if ( /^[0-9a-zA-Z\s]+$/.test(value) == false )
									return false;
								break;
							case "datetime":
							case "time":
								var timeRegExp=/([0-9]{1,2}):?([0-9]{2}):?([0-9]{2})?[ \t]*(a|p|am|pm|A|P|AM|PM)?$/;
								if ( timeRegExp.test(value) == false )
									return false;
								var datepart=RegExp.leftContext;
								if ( this.format == "time" && datepart != "" )
									return false; // Time string should consist of only the time.
								var hoursString=RegExp.$1;
								var minutes=RegExp.$2;
								if ( RegExp.$3 )
									var seconds=RegExp.$3;
								else
									var seconds="";
								if ( RegExp.$4 )
									var timeperiod=RegExp.$4;
								else
									var timeperiod="";
																
								var numberRegExp=/^\d+$/;
								// Test Hours
								if ( numberRegExp.test(hoursString) == false )
									return false; // Non-Number Hours
								var hours=parseInt(hoursString);
								if ( timeperiod != "" && ( hours < 1 || hours > 12 ) )
									return false; // Invalid 12-hour Time
								else if ( timeperiod == "" && ( hoursString.length != 2 || hours < 0 || hours > 23 ) )
									return false; // Invalid 24-hour Time
								// Test Minutes
								if ( numberRegExp.test(minutes) == false )
									return false; // Not a Number
								minutes=parseInt(minutes);
								if ( minutes < 0 || minutes > 59 )
									return false; // Invalid Minutes
								// Test Seconds
								if ( seconds != "" ) {
									if ( numberRegExp.test(seconds) == false )
										return false; // Non-Number Seconds 
									seconds=parseInt(seconds);
									if ( seconds < 0 || seconds > 59 )
										return false; // Invalid Seconds
								}
								if ( this.format == "time" )
									break; // If only validating time, we're done.
								else 
									value=datepart.trim(); // Continue to processing the date.
							case "date":
							case "gregorian":
								var dateRegExp=/^([0-9a-zA-Z]+)[\/\.\-, \t]+([0-9a-zA-Z]+)[\/\.\-, \t]+([0-9]+)$/;
								if ( dateRegExp.test(value) == false )
									return false;
								
								var part1=RegExp.$1; 
								var part2=RegExp.$2;
								var part3=RegExp.$3;
								var part1_temp=part1.replace(/(st|nd|rd|th)$/,"");
								var part2_temp=part2.replace(/(st|nd|rd|th)$/,"");
								
								// Validate Year
								var year=parseInt(part3);
								if ( year < 1 || (part3.length < 4 && part3.length != 2) )
									return false; // Invalid year format.
								
								// Determine European or American Date Format first by looking for a month string.
								// Assume American Date Format first.
								if ( /^\d+$/.test(part2_temp) ) {
									var day=parseInt(part2_temp);
									if ( /^\d+$/.test(part1_temp) )
										var month=part1_temp;
									else
										var month=part1;
								}
								else if ( /^\d+$/.test(part1_temp) ) {
									var day=parseInt(part1_temp);
									if ( /^\d+$/.test(part2_temp) )
										var month=part2_temp;
									else
										var month=part2;
								}
								else {
									return false // Both are strings, and one must be the day in number format.
								}
								
								if ( /^\d+$/.test(month) ) {
									// Both are numbers.
									month=parseInt(month);
									if  ( month > 12 ) {
										// The other number must be the month, i.e. eurpoean format.
										if ( day > 12 )
											return false; // Neither is a month.
										// Swap month and day values.
										var temp=month;
										month=day;
										day=temp;
									}
								}
								else {
									// Month is in string format.
									switch (month.toLowerCase()) {
										case "january":
										case "jan":
											month=1;
											break;
										case "february":
										case "febr":
										case "feb":
											month=2;
											break;
										case "march":
										case "mar":
											month=3;
											break;
										case "april":
										case "apr":
											month=4;
											break;
										case "may":
											month=5;
											break;
										case "june":
										case "jun":
											month=6;
											break;
										case "july":
										case "jul":
											month=7;
											break;
										case "august":
										case "aug":
											month=8;
											break;
										case "september":
										case "sept":
										case "sep":
											month=9;
											break;
										case "october":
										case "oct":
											month=10;
											break;
										case "november":
										case "nov":
											month=11;
											break;
										case "december":
										case "dec":
											month=12;
											break;
										default:
											return false; // Not a valid month string.
									}
								}
								
								if ( month < 1 || day < 1 )
									return false; // Non-zero, non-negative numbers.
									
								switch (month) {
									case 1:
									case 3:
									case 5:
									case 7:
									case 8:
									case 10:
									case 12:
										if ( day > 31 )
											return false;
										break;
									case 4:
									case 6:
									case 9:
									case 11:
										if ( day > 30 )
											return false;
										break;
									case 2:
										if (year%4 == 0 && (year%100 != 0 || year%400 == 0) )
											if (day > 29)
												return false;
											else
												break;
										else if (day > 28)
											return false;
										break;
								}
								break;
							default:
								// Assume we're dealing with a list of file extensions
								var valueArray=value.toLowerCase().split(".");
								// If value does not contain an extension, then we are in error.
								if ( valueArray.length < 2 )
									return false;
								else
									value=valueArray.pop().trim();
								var extArray=this.format.split();
								for (var i=0; i<=extArray.length; i++) {
									if ( value == extArray[i].trim() )
										return true;
								}
								return false;
								break;
						}
					}
					return true;
				}
				Condition.prototype.translatealphaphonenumber=function(phonenumber) {
					 phonenumber=phonenumber.replace(/[abcABC]/g,"2");
					 phonenumber=phonenumber.replace(/[defDEF]/g,"3");
					 phonenumber=phonenumber.replace(/[ghiGHI]/g,"4");
					 phonenumber=phonenumber.replace(/[jklJKL]/g,"5");
					 phonenumber=phonenumber.replace(/[mnoMNO]/g,"6");
					 phonenumber=phonenumber.replace(/[prsPRS]/g,"7");
					 phonenumber=phonenumber.replace(/[tuvTUV]/g,"8");
					 phonenumber=phonenumber.replace(/[wxyWXY]/g,"9");
					 return phonenumber;
				}
			}
			// ]]>
		</script>
		
		<script language="javascript">
			if (typeof(Validation) == "undefined") {
				Validation=function(form,validationId) {
					this.form=form;
					this.validationId=validationId;
					this.message="";
					this.conditions=new Object();
					this.validations=new Object();
				}
				Validation.prototype.setMessage=function(message) {
					this.message=message;
				}
				Validation.prototype.addCondition=function(fieldname,conditionId) {
					if (typeof(this.conditions[fieldname]) == "undefined")
						this.conditions[fieldname]=new Array();
					this.conditions[fieldname].push(conditionId);
					// alert("Adding Condition "+conditionId+" for Field: "+fieldname);
				}
				Validation.prototype.addValidation=function(fieldname,conditionId) {
					if (typeof(this.validations[fieldname]) == "undefined")
						this.validations[fieldname]=new Array();
					this.validations[fieldname].push(conditionId);
					// alert("Adding Validation Condition "+conditionId+" for Field: "+fieldname);
				}
				if (typeof(Ext) != "undefined") {
					
					Validation.prototype.evaluate=function() {
						var fieldname;
						var fieldValues = this.form.getValues(false);
						var conditionId;
						var condition_result=true;
						var validation_result=true;
						var result=true;
						var valueList;
						
						for (fieldname in this.conditions) {
							if (typeof(fieldValues[fieldname]) != "undefined") {
								for (var i=0; i<this.conditions[fieldname].length; i++) {
									conditionId = this.conditions[fieldname][i];
									if ( conditionId < this.form.conditions.length ) {
										// We're going to convert arrays into lists because Ext turns Arrays into Objects.
										// Since I don't want Condition.cfc to distinguish between Ext and non-Ext code,
										// we'll do that conversion here to the neutral format of a value list.
										if ( Ext.isArray(fieldValues[fieldname]) ) {
											valueList = new Array();
											for (var j=0; j<fieldValues[fieldname].length; j++)
												valueList.push(fieldValues[fieldname][j].replace(/,/g,"")); // Strip commas before evaluation
											valueList = valueList.join(","); // Comma is default, but I'll be explicit.
										}
										else {
											valueList = fieldValues[fieldname].replace(/,/g,""); // String commas before evaluation
										}
										if ( this.form.conditions[conditionId].checkvalues(valueList) == false ) {
											condition_result=false;
											break;
										}
									}
								}
							}
							if (condition_result == false)
								break;
						}
						for (fieldname in this.validations) {
							if (typeof(fieldValues[fieldname]) != "undefined") {
								if ( condition_result == true ) {
									validation_result=true;
									// Ext.alert("Checking Validation Conditions for: "+fieldname);
									for (var i=0; i<this.validations[fieldname].length; i++) {
										conditionId=this.validations[fieldname][i];
										if ( conditionId < this.form.conditions.length ) {
											// We're going to convert arrays into lists because Ext turns Arrays into Objects.
											// Since I don't want Condition.cfc to distinguish between Ext and non-Ext code,
											// we'll do that conversion here to the neutral format of a value list.
											if ( Ext.isArray(fieldValues[fieldname]) ) {
												valueList = new Array();
												for (var j=0; j<fieldValues[fieldname].length; j++)
													valueList.push(fieldValues[fieldname][j].replace(/,/g," ")); // Strip commas before evaluation
												valueList = valueList.join(","); // Comma is default, but I'll be explicit.
											}
											else {
												valueList = fieldValues[fieldname].replace(/,/g," "); // Strip commas before evaluation
											}
											if ( this.form.conditions[conditionId].checkvalues(valueList) == false ) {
												validation_result=false;
												result=false;
												break;
											}
										}
									}
									// Ext.alert("Result for "+fieldname+": "+validation_result);
								}
								// Ext.alert("Updating "+fieldArray.length+" fields");
								for (var i=0; i<this.form.fields[fieldname].length; i++) {
									if ( condition_result == false || validation_result == true ) {
										// Need to add code to clear only the message for this particular validationId.
										this.form.fields[fieldname][i].clearInvalid();
									}
									else {
										// Ext.alert("Adding Message: "+this.message);
										// Need to add code that will concatenate multiple messages for multiple validationIds.
										this.form.fields[fieldname][i].markInvalid(this.message);
									}
								}
							}
						}
						return result;
					}
				
				}
				else {
	
					Validation.prototype.getValues=function(fieldname) {
						var fieldArray, fieldvalue;
						if (typeof(this.form[fieldname]) != "undefined") {
							if (typeof(this.form[fieldname].name) != "undefined") { // Single field
								fieldArray=new Array();
								fieldArray[0]=this.form[fieldname];
							}
							else { // Multiple fields
								fieldArray=this.form[fieldname];
							}
							// alert("Number of fields to check: "+fieldArray.length);
							var currentvalue=new Array();
							for (var i=0; i<fieldArray.length; i++) {
								fieldvalue=fieldArray[i].getCurrentValue().replace(/,/g," "); // Strip commas before evaluation
								if ( fieldvalue != "" )
									currentvalue.push( fieldvalue );
							}
							// alert("Result for "+fieldArray[i].name+": "+result);
							return currentvalue.join();
						}
						return;
					}
					Validation.prototype.evaluate=function() {
						var field, fieldname, fieldArray, fieldValues;
						var conditionId;
						var condition_result=true;
						var validation_result=true;
						var result=true;
						for (fieldname in this.conditions) {
							// alert("Checking Conditions for: "+fieldname);
							fieldValues = this.getValues(fieldname);
							if (typeof(fieldValues) != "undefined") {
								for (var i=0; i<this.conditions[fieldname].length; i++) {
									conditionId=this.conditions[fieldname][i];
									// alert("Checking Condition: "+conditionId);
									// alert("Checking Condition with case sensitivity: "+this.form.conditions[conditionId].casesensitive);
									if ( conditionId < this.form.conditions.length && this.form.conditions[conditionId].checkvalues(fieldValues) == false ) {
										condition_result=false;
										break;
									}
								}
							}
							// alert("Result for "+fieldname+": "+condition_result);
							if ( condition_result == false )
								break;
						}
						for (fieldname in this.validations) {
							if ( condition_result == true ) {
								validation_result=true;
								// alert("Checking Validation Conditions for: "+fieldname);
								fieldValues = this.getValues(fieldname);
								if (typeof(fieldValues) != "undefined") {
									for (var i=0; i<this.validations[fieldname].length; i++) {
										conditionId=this.validations[fieldname][i];
										if (conditionId < this.form.conditions.length && this.form.conditions[conditionId].checkvalues(fieldValues) == false ) {
											validation_result=false;
											result=false;
											break;
										}
									}
								}
								// alert("Result for "+fieldname+": "+validation_result);
							}
							if (typeof(this.form[fieldname]) != "undefined") {
								if (typeof(this.form[fieldname].name) != "undefined") {
									fieldArray=new Array();
									fieldArray[0]=this.form[fieldname];
								}
								else {
									fieldArray=this.form[fieldname];
								}
								// alert("Updating "+fieldArray.length+" fields");
								for (var i=0; i<fieldArray.length; i++) {
									if ( condition_result == false || validation_result == true ) {
										fieldArray[i].removeError(this.validationId);
									}
									else {
										// alert("Adding Message: "+this.message);
										fieldArray[i].addError(this.validationId,this.message);
									}
								}
							}
						}
						return result;
					}
	
				}
			}
		</script>
    
				<style type="text/css">
				INPUT.onerror, SELECT.onerror, TEXTAREA.onerror {
					background-color: #FFDDDD;
				}
				</style>
			
			<script type="text/javascript">
				// <![CDATA[
				
				// Define Global Functions
				if (typeof(Ext) != "undefined") {

					// Modify the BasicForm prototype for field name lookups.
					if (!Ext.form.BasicForm.prototype._ErrorMunkey_oldAdd) {
						Ext.apply(Ext.form.BasicForm.prototype,{
							fields : {},
							
							_ErrorMunkey_oldAdd : Ext.form.BasicForm.prototype.add,
							add : function() {
								var fa = Array.prototype.slice.call(arguments, 0);
								for (var fi=0; fi<fa.length; fi++) {
									if (fa[fi].name) {
										if (typeof(this.fields[fa[fi].name]) == "undefined")
											this.fields[fa[fi].name] = new Array();
										this.fields[fa[fi].name].push(fa[fi]);
									}
									fa[fi].form = this;
								}
								this._ErrorMunkey_oldAdd.apply(this,arguments);
								return this;
							},
							_ErrorMunkey_oldRemove : Ext.form.BasicForm.prototype.remove,
							remove : function(field) {
								this._ErrorMunkey_oldRemove(field);
								this.fields[field.name].remove(field);
								return this;
							}
							
						});
					}
				
				}
				else {
				
					if (typeof(Function.prototype.toCodeString) == "undefined") {
						Function.prototype.toCodeString=function() {
							return this.toString().match(/function\s*\w*\s*\(\s*\w*\s*\)\s*\{((.|\n)+)\}$/i)[1];
						}
						Function.prototype.append=function(other_function) {
							// To do, append the list of parameters from one function to the next.
							// func_elements=this.toString().match(/function\s*\w*\s*\(\s*(\w*)\s*\)\s*\{((.|\n)+)\}$/i);
							return new Function(this.toCodeString() + "\n" + other_function.toCodeString());
						}
					}
					
					// Singleton Object - Prototype functions for fields
					// A form field does not have a prototype object, so we'll build one
					// here and manually add functions to the filed later, as necessary.
					if (typeof(Field) == "undefined") {
						Field=function() {}
						Field.getValue=function() {
							return this.value;
						}
						Field.getCheckboxRadioValue=function() {
							if ( this.checked )
								return this.value;
							else
								return "";
						}
						Field.getFileValue=function() {
							return this.value.split(/[\\\/]/).pop()
						}
						Field.getSelectValue=function() {
							var currentvalue=new Array();
							for (var i=0; i<this.options.length; i++)
								if (this.options[i].selected && this.options[i].value.trim() != "")
									currentvalue.push(this.options[i].value);
							return currentvalue.join();
						}
						Field.addClass=function(classname) {
							classes=this.className.split(" ");
							for (var i=classes.length-1; i>=0; i--)
								if (classes[i] == classname)
									return true; // If the onerror class already exists, we're done.
							// Otherwise, add the onerror class.
							classes.push(classname);
							this.className=classes.join(" ");
						}
						Field.removeClass=function() {
							classes=this.className.split(" ");
							for (var i=classes.length-1; i>=0; i--)
								if (classes[i] == "onerror")
									classes.splice(i,1);
							this.className=classes.join(" ");
						}
						Field.onsuccess=function() {
							if (this.removeClass)
								this.removeClass("onerror");
						}
						Field.onerror=function() {
							if (this.addClass)
								this.addClass("onerror");
						}
						Field.addError=function(validationId,message) {
							if ( typeof(message) == "undefined" )
								message=this.form.validations[validationId].message;
							this.errors[validationId]=message;
							// Register an error.
							if (this.onerror)
								this.onerror();
							return true;
						}
						Field.removeError=function(validationId) {
							delete this.errors[validationId];
							for (var i in this.errors) {
								return true; // If any other errors exist, we're done.
							}
							// Otherwise, register a success.
							if (this.onsuccess)
								this.onsuccess();
							return true;
						}
						Field.validate=function() {
							var result=true;
							// alert("Performing "+this.validations.length+" Validations for: "+this.name);
							for (var j=0; j<this.validations.length; j++) {
								// alert("Performing Validation: "+this.validations[j]);
								// alert("Message for Validation: "+this.form.validations[this.validations[j]].message);
								if ( this.form.validations[this.validations[j]].evaluate() == false )
									result=false;
							}
							return result;
						}
						Field.showerrors=function() {
							var has_errors=false;
							var message='';
							for (var i in this.errors) { 
								has_errors=true;
								if (this.errors[i] != '') 
									message+='- '+this.errors[i]+"\n"; 
							}
							if (has_errors) {
								if (message != '')
									alert(message);
								else // Generic error messsage
									alert("There has been a validation error.");
							}
						}
	
					}
				}
				
				// Assign Conditions and Validations to Fields
				function addFieldValidations(form, fieldname, validations) {
					var field, fieldArray;
					
					if (typeof(Ext) != "undefined") {
						
						if (typeof(form.fields[fieldname]) != "undefined") {
							fieldArray = form.fields[fieldname];
							for (var i=0; i<fieldArray.length; i++) {
								field = fieldArray[i];
								field.validations = validations;
								field._ErrorMunkey_oldValidateValue = field.validateValue;
								field.validateValue = function(value) {
									var result = true;
									// alert("Performing "+this.validations.length+" Validations for: "+this.name);
									for (var j=0; j<this.validations.length; j++) {
										// alert("Performing Validation: "+this.validations[j]);
										// alert("Message for Validation: "+this.form.validations[this.validations[j]].message);
										if ( this.form.validations[this.validations[j]].evaluate() == false )
											result=false;
									}
									if (result == false)
										return result;
									else
										return this._ErrorMunkey_oldValidateValue(value);
								}
							}
						}
					
					}
					else {
					
						if (typeof(form[fieldname]) != "undefined") {
							if (typeof(form[fieldname].name) != "undefined") { // Single field
								fieldArray=new Array();
								fieldArray[0]=form[fieldname];
							}
							else { // Multiple fields
								fieldArray=form[fieldname];
							}
							for (var i=0; i<fieldArray.length; i++) {
								field=fieldArray[i];
								// New Properties
								// field.conditions=conditions; // An array of condition IDs
								field.validations=validations; // An array of validation IDs
								field.errors=new Object();
								// New Functions
								if ( typeof(field.options) != "undefined" )
									field.getCurrentValue=Field.getSelectValue;
								else if ( field.type == "checkbox" || field.type == "radio" )
									field.getCurrentValue=Field.getCheckboxRadioValue;
								else if ( field.type == "file" )
									field.getCurrentValue=Field.getFileValue;
								else
									field.getCurrentValue=Field.getValue;
								// Set default onerror/onsuccess handlers
								if (!field.onerror && !field.onsuccess) {
									field.onerror=Field.onerror;
									field.onsuccess=Field.onsuccess;
								}
								field.addError=Field.addError;
								field.removeError=Field.removeError;
								field.addClass=Field.addClass;
								field.removeClass=Field.removeClass;
								field.validate=Field.validate;
								field.showerrors=Field.showerrors;
								// The following sets turn off validate-as-you-type.
								// field.onkeyup=function() {}
								// field.onmouseup=function() {}
								// Automatic validation will be completely disabled if onkeyup, onmouseup, and onchange are all overridden
								if ( field.type == "checkbox" || field.type == "radio" || field.type == "file" ) {
									if ( !field.onclick )
										field.onclick=function() {
											this.validate();
											this.showerrors();
										}
								}
								else {
									// The following functions will validate as-you-type.
									// I tried to capture the mouse-based cut/copy/paste events, but couldn't do so.  I tried capturing onmousedown, onmouseup, onclick, oncut, and onpaste, at the field, form, document.body, document, and window levels.
									// Safari does not immediately capture the Copy and Paste keystrokes, but Firefox and IE do.
									if ( !field.onkeyup )
										field.onkeyup=function() {
											this.validate();
										}
									if ( !field.onfocus )
										field.onfocus=function() {
											this.validate();
										}
									if ( !field.onclick )
										field.onclick=function() {
											this.validate();
										}
									if ( !field.onblur ) // Using onblur keeps the from show the error message every time that you click on a select list.
										field.onblur=function() {
											result=this.validate();
											this.showerrors();
											return result;
										}
									else if ( !field.onchange ) // If onblur is used, onchange will ensure that the error message are shown.
										field.onchange=function() {
											result=this.validate();
											this.showerrors();
											return result;
										}
								}
							}
						}
					
					}
				}
				// ]]>
			</script>
			
			<script type="text/javascript">
				// <![CDATA[
				defineErrorMunkeyValidations = function() {
					var  form;
					
					if (typeof(Ext) != "undefined") {
					
						// Define form userProfile
						form = Ext.getCmp('userProfile').getForm();
					
					}
					else {
					
						// Define form userProfile
						form=document.forms["userProfile"];
						// Setup form error handlers
						form.errors=new Object();
						form.showerrors=Field.showerrors;
						form.validate=function() {
							this.errors=new Object();
							for (var i=0; i<this.validations.length; i++) {
								if ( this.validations[i] && this.validations[i].evaluate() == false )
									this.errors[this.validations[i].validationId]=this.validations[i].message;
							}
							for (var i in this.errors) {
								return false; // If there are any errors, return false
							}
							return true;
						}
						if (!form.onsubmit) {
							form.onsubmit=function() {
								result = this.validate();
								this.showerrors();
								return result;
							}
						}
						if (!window.onload) {
							window.onload=function() {
								document.forms["userProfile"].validate();
							}
						}
						
					}
					
					// Output Conditions
					if (typeof(form.conditions) == "undefined")
						form.conditions=new Array();
					
					
					// Output Validations
					if (typeof(form.validations) == "undefined")
						form.validations=new Array();
					
					
					/*
					for (var i in form.validations) {
						alert("Adding Validation: "+i);
						for (var j in form.validations[i].conditions) {
							alert("Addition Condition "+form.validations[i].conditions[j] + " for Field "+j);
						}
						for (var j in form.validations[i].validations) {
							alert("Adding Validation Condition "+form.validations[i].validations[j] + " for Field "+j);
						}
					}
					*/
		
					// Add Conditions & Validations to Field
					
				}
				
				if (typeof(Ext) != "undefined") {
					Ext.onReady(function(){
						defineErrorMunkeyValidations();
						Ext.getCmp("userProfile").startMonitoring();
					});
				}
				else {
					defineErrorMunkeyValidations();
				}
				// ]]>
			</script>
    </div>