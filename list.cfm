<cfimport prefix="" taglib="/MillionMunkeys/FormMunkey_2_13/" />

<script type="text/javascript">
   $(document).ready(function () {
		$(".viewButton").button();
    });
</script>

<style>
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
	{ background-color: #F04E23;
 		float: left;
		width: 70px;
		height: 30px;
		text-align: center;
		color:#FFFFFF;
		font-weight: bold;
		font-size: 20px;
		padding:5px 10px
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
<cfset baseURLPath=Request.TrafficMunkey.get('baseURLPath') />
<cfoutput>
<cfparam name="tables" default="Project,Product">
<form name="sortBy">
<select name="sortBySelect">
    <option>Sort By</option>
    <option>Newest projects</option>
    <option>Highest bounty</option>
    <option>Oldest unclaimed</option>
    <option>Ending soon</option>

</select>
</form>
<form name="projectList" datasource="#Request.TrafficMunkey.get('dsn')#" query="#tables#" editable="false">
<fieldset style="margin:10px">
	<legend class="boldText"><input name="Project.Title" /></legend>
	<div class="projectSummary">
		<div class="viewButton" >
			<a href="project.cfm?Project.Project_ID=Project.Project_ID"><button type="button">View</button></a>
		</div>
			<div class="description"><input name="Project.Description" /></div>
		
		<div class="projectData">
			<div class="pitchAmount">#dollarFormat(Project.Total_Bounty) #</div>
<!---			<div class="neededBy">needed by 12</div>
--->			<div class="productLogo">
				<cfif Len(Product.logo)>
					<input name="Product.logo" type="image" src="#Product.logo#" />
				<cfelse>
					<input name="Product.name" />
				</cfif>
			</div>
		</div>
	</div>
</fieldset>
</form>

<!---
	<div class="projectSummary">
		<label>
			Search result Two
		</label>

		<div class="viewButton">
			<button type="button">
				View
			</button>
		</div>

		<div>
			I need help to develop this plugin, help me!
		</div>

		<div class="projectData">
			<div class="pitchAmount">
				$1000
			</div>
	
			<div class="neededBy">
				needed by 10
			</div>
	
			<div class="productLogo">
				<img src="#baseURLPath#images/platforms/platforms_r2_c10.gif">
			</div>
		</div>
	</div>


	<div class="projectSummary">
		<label> 
			Search result Three 
		</label>
		
		<div class="viewButton">			
			<button type="button">
				View
			</button>
		</div>

		<div> 
			This app needs the sliding effect in iOS
		</div>

		<div class="projectData">
			<div class="pitchAmount">
				$200
			</div>
			<div class="neededBy">
				needed by 7 
			</div>
			<div class="productLogo">
				<img src="#baseURLPath#images/platforms/platforms_r3_c6.gif">
			</div>
		</div>

	</div>



	<div class="projectSummary">
		<label> 
			Search result Four 
		</label>
	
		<div class="viewButton">			
			<button type="button">
				View
			</button>
		</div>

		<div>
			The description that no one reads, please read me!
		</div>

		<div class="projectData">
			<div class="pitchAmount">
				$168 
			</div>
	
			<div class="neededBy">
				needed by 2
			</div>
	
			<div class="productLogo">
				<img src="#baseURLPath#images/platforms/platforms_r7_c5.gif">
			</div>
		</div>

	</div>
--->
</cfoutput>
