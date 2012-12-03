<cfimport prefix="" taglib="/MillionMunkeys/FormMunkey_2_13/" />

<script type="text/javascript">
	function textFill(input){
		var originalvalue = input.val();
		input.focus(function() {
			if( $.trim(input.val()) == originalvalue) {input.val('');}
		});
		input.blur(function() {
			if($.trim(input.val()) === '') {input.val(originalvalue);}
		});
	}
   $(document).ready(function () {
		$("#searchId").val("Search");
		textFill($('#searchId'));
	});
/*
   $("#searchId")
   		.val("Search")
   		.focus(function () {
   			if ($(this).val('') == "Search"){
   				$(this).val(" ");
   			}
   		})
   		.blur(function () {
   			if ($(this).val('') == " "){
   				$(this).val("Search");
   			}
   		}); */
/*
   $("#searchId").bind({
   		focus: function(event){
   				alert('focus');
   		},
   		blur: function(event){
   			alert('blur');
   		}
   });
*/

/*

   	'focus', function () {
   		var $this = $(this);
   			if($this.val()=='Search'){
   				$this.val('');
   		}
   }).on('blur', function() {
   		var $this = $(this);
   		if($this.val() == ''){
   			$this.val('Search');
   		}
   });
*/

</script>

<style>
	.search
	{
		text-align: center;
		margin: 1em;
	}
	.main .searchId
	{
		width: 500px;
	}
</style>

<cfif StructKeyExists(URL, "Product.Product_ID")>
	<cfset savedProductID = URL["Product.Product_ID"] />
	<cfset StructDelete(URL, "Product.Product_ID") />
</cfif>
<div class="search"style="
    margin-top: 20px;
    width: 379px;
    margin-left:429px;">
	<!--<form name="SearchForm" datasource="#Request.TrafficMunkey.get('dsn')#" method="get" action=""> -->
		<select name="Product.Product_ID">
			<option value="">All Product</option>
			<cfoutput>
			<inputgroup query="Product">
				<option value="#Product.Product_ID#">#Product.name#</option>
			</inputgroup>
			</cfoutput>
		</select>
		<input class="searchId" type="search" placeholder="Search" name="Project.Title" style="width: 200px;">
		<button class="ui-state-default ui-corner-all" type="submit" onclick="javascript:window.location = 'list.cfm'">
			<!--- <span class="ui-icon ui-icon-search">Search</span> --->
			Search
		</button>
	<!-- </form> -->
</div>
<cfif StructKeyExists(Variables, "savedProductID")>
	<cfset URL["Product.Product_ID"] = savedProductID />
</cfif>