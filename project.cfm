<cfimport prefix="" taglib="/MillionMunkeys/FormMunkey_2_13/" />

<style>

	#requirments{
		list-style: none;
		overflow: auto;
	}

	#requirments li{
		padding-bottom: 5px;
	}


	.detail{
		padding-bottom: 5px;
	}

	.developer{ background-color:#EEEEEE; float:left; margin:10px; padding:10px; border:#F04E23 thin solid }
	.requester{ background-color:#EEEEEE; float:left; margin:10px; padding:10px; border:#F04E23 thin solid }

	.comments{
		overflow: auto;
	}

	.comments li{
		padding-bottom: 5px;
	}

	.comment_meta{
		text-size: .4em;
	}

	.timeText{
		font-size:12px; color:#F04E23
	}
	.accordianContent{max-height:500px; overflow:scroll}

</style>

<script>
	$(function(){
		$(".addComment").button();
        $( "#accordion" ).accordion();
		$(".datePicker").datepicker();
    });
</script>

<cfparam name="URL['Project.Project_ID']" default="0" />
<cfset editable="false" />

<div id="mainConent" style="padding: 15px">
<form name="project" method="post" datasource="#Request.TrafficMunkey.get('dsn')#" query="Project" storage="Project">
	<cfif recordcount>
		<cfset new=false />
	<cfelse>
		<cfset new=true />
	</cfif>
	<cfif currentrow>
		
		<button type="submit" name="Version.User_ID" value="#Session.User.get('User_ID')#">Code for This Bounty</button>
		<!---
		<inputgroup query="Project,Version" storage="Project,Version">
			<cfif not RecordCount>
				<!-- START IF UNINTERESTED PARTY -->
				<!-- END IF -->
			</cfif>
		</inputgroup>
		--->
	
		<cfif Project.User_ID eq Session.User.get('user_id')>
			<cfset editable="true" />
			<div style="float:right">
				<a href=""><button type="submit" name="submit">Edit</button></a>
			</div>
		</cfif>
		
	<cfelse>
		
		<cfset editable="true" />
		
	</cfif>
	
	<cfif currentrow or not recordcount>
		<div id="accordion">
			<h3>Project Information</h3>
			<div class="accordianContent">
				<input name="Project.Project_ID" type="hidden" />
				<cfif currentrow eq 0>
					<input name="Project.User_ID" type="hidden" value="#Session.User.get('user_id')#" />
					<input name="Project.Date_Created" type="hidden" value="#now()#" />
				</cfif>
				<div class='detail'>
					<span class='boldText'>Project Title:</span>
					<input name="Project.Title" editable="#editable#" size="70" />
				</div>
				<div class='detail'>
					<span class='boldText'>Product:</span>
					<select name="Project.Product_ID" query="Product" editable="#editable#">
						<option value="">None</option>
						<option value="Product.Product_ID">Product.name</option>
					</select>
				</div>
				<div class='detail'>
					<span class='boldText'>Description:</span><br/>
					<textarea name="Project.Description" cols="100" rows="10" editable="#editable#">
					</textarea>
				</div>
				<cfif currentrow>
					<fieldset>
						<legend>Tags</legend>
						<cfset URL["Tag.Project_ID"]=Project.Project_ID />
						<inputgroup query="Tag" storage="Tag" addrow="last">
							<cfif currentrow eq 0><br clear="all" /></cfif>
							<div style="color:#FFFFFF; background-color:#F04E23; float:left; padding: 0px 5px; margin:5px">
								<cfif StructKeyExists(Form,"Tag.name") and not Len(Form["Tag.name"])>
									<cfset Form["Tag.Project_ID"] = "" />
								</cfif>
								<input name="Tag.Tag_ID" type="hidden" editable="#editable#" />
								<input name="Tag.Project_ID" type="hidden" value="#Project.Project_ID#" editable="#editable#" />
								<cfif Len(Tag.Tag_ID)>
									<cfoutput>#Tag.name#</cfoutput>
									<cfif editable>
										<button name="Tag.DELETE" type="submit" class="ui-state-default ui-corner-all">
											<span class="ui-icon ui-icon-trash">Delete</span>
										</button>
									</cfif>
								<cfelse>
									<input name="Tag.name" />
									<button type="submit" class="ui-state-default ui-corner-all">
										<span class="">Add</span>
									</button>
								</cfif>
							</div>
						</inputgroup>
					</fieldset>
				</cfif>
			</div>
			
			<cfif currentrow>
			
				<h3>Requirements</h3>
				<div class="accordianContent">
					<div class='detail'>
						<span class='boldText'>Requirements:</span><br>
						<ol id="requirments">
							<cfset URL["Requirement.Project_ID"]=Project.Project_ID />
							<inputgroup query="Requirement" storage="Requirement" addrow="last">
								<li>
									<cfif StructKeyExists(Form,"Requirement.Description") and not Len(Form["Requirement.Description"])>
										<cfset Form["Requirement.Project_ID"]="" />
									</cfif>
									<input name="Requirement.Requirement_ID" type="hidden" />
									<input name="Requirement.Project_ID" type="hidden" value="#Project.Project_ID#" />
									<textarea name="Requirement.Description" rows="3" cols="100" editable="#not currentrow#" /><br />
									<cfif not currentrow>
										<button type="submit">Add Requirement</button>
									<cfelse>
										<cfset URL["Message.Requirement_ID"] = Requirement.Requirement_ID />
										<ul class="comments">
											<inputgroup query="Message,User" storage="Message,User" addrow="last">
												<li>
													<cfif StructKeyExists(Form,"Message.Content") and not Len(Form["Message.Content"])>
														<cfset Form["Message.User_ID"]="" />
														<cfset Form["Message.Requirement_ID"]="" />
													</cfif>
													<input name="Message.Message_ID" type="hidden" />
													<input name="Message.Requirement_ID" type="hidden" value="#Requirement.Requirement_ID#" />
													<input name="Message.User_ID" type="hidden" value="#Session.User.get('user_id')#" />
													<div class="comment_text">
														<textarea name="Message.Content" rows="3" cols="90" editable="#not currentrow#"></textarea><br />
														<cfif not currentrow>
															<button type="submit">Add Comment</button>
														</cfif>
													</div>
													<cfif currentrow>
														<div class="comment_meta lightText" style="font-size:12px">by <input name="User.Name" editable="false" /> <font class="lightText timeText"></font></div>
													</cfif>
												</li>
											</inputgroup>
										</ul>
									</cfif>
								</li>
							</inputgroup>
						</ol>	
					</div>
				</div>
				
				<h3>Requesters</h3>
				<div class="accordianContent">
					
					<cfset URL["Bounty.Project_ID"] = Project.Project_ID />
					<cfoutput>
					<inputgroup query="Bounty,User" storage="Bounty" addrow="last">
						<cfif currentrow>
							<fieldset class="requester">
								<input type="hidden" name="Bounty.bounty_id" editable="false" />
								<legend><input name="User.name" editable="false" /></legend>
								<label class='boldText'>Bounty:</label> $<input name="Bounty.value" editable="false" /><br />
								<label class='boldText'>Due Date:</label>
								<cfif Len(Bounty.delivery_date)>
									<input type="date" name="Bounty.delivery_date" editable="false" format="mm/dd/yyyy" />
								<cfelse>
									<em>none</em>
								</cfif><br />
							</fieldset>
						<cfelse>
							<cfif StructKeyExists(Form,"Bounty.value") and not Len(Form["Bounty.value"])>
								<cfset Form["Bounty.Project_ID"]="" />
								<cfset Form["Bounty.User_ID"]="" />
								<cfset Form["Bounty.Delivery_Date"]="" />
							</cfif>
							<div style="float:left; clear: both;">
								<input type="hidden" name="Bounty.bounty_id" />
								<input type="hidden" name="Bounty.project_id" value="#Project.Project_ID#" />
								<input type="hidden" name="Bounty.User_ID" value="#Session.User.get('user_id')#" />
								$<input type="text" name="Bounty.value" />
								<input class="datePicker" name="Bounty.Delivery_Date" />
								<button type="submit">Add to This Bounty</button>
							</div><div style="clear:both"></div>
						</cfif>
					</inputgroup>
					</cfoutput>
				</div>

			</cfif>
			
	<!---
			<h3>Developers (2)</h3>
			<div class="accordianContent">
				<div style="float:left">
					<input type="submit" name="submit" value="Code for This Bounty" />
				</div><div style="clear:both"></div>
				<div class='detail'>
					<fieldset class="developer">
						<legend>Matthew Whittemore</legend>
						<label class='boldText'>Number of Commits:</label> 23<br />
						<label class='boldText'>Last Commit:</label> 10 min ago<br />
						<label class='boldText'>Started:</label> 5 days ago<br />
						<label class='boldText'>Number of Active Projects:</label> 1,2000<br />
						<label class='boldText'>Number of completed Projects:</label> 3<br />
						<label class='boldText'>Overall satisfaction rating:</label> 18%<br />
					</fieldset>
					<fieldset class="developer">
						<legend>Keith Center</legend>
						<label class='boldText'>Number of Commits:</label> 14<br />
						<label class='boldText'>Last Commit:</label> over 1 day ago<br />
						<label class='boldText'>Started:</label> 13 days ago<br />
						<label class='boldText'>Number of Active Projects:</label> 6<br />
						<label class='boldText'>Number of completed Projects:</label> 42<br />
						<label class='boldText'>Overall satisfaction rating:</label> 97%<br />
					</fieldset>
				</div>
			</div>
	--->
		</div>	
	</cfif>
	
	<button type="submit">Save Project</button>
</form>

<cfif Request.FormMunkey.SubmittedData and not Request.FormMunkey.hasErrors>
	<cfif new>
		<cflocation url="?Project.Project_ID=#Form['Project.Project_ID.0']#" addtoken="no" />
	<cfelse>
		<cflocation url="?Project.Project_ID=#Form['Project.Project_ID.1']#" addtoken="no" />
	</cfif>
</cfif>

</div>