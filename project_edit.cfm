<style>

	.requirement_cut{
		color: #ff3300;
	}

</style>


 <script>

 	var num_requests = 2;
 	var min_num = 2; //THIS NEEDS TO BE SET ON PAGE CREATION

 	function newRemove(id){

 		return '<button class="remove_requirment " id="'+id+'" >X</button>';
 	}

 	function newRequirment(text, type){

 		var li_class = "";
 		if(type=='cut'){
 			li_class = li_class+' requirment_cut';
 		}

 		var li = '<input type="hidden" value="'+text+'" name="requirement_'+num_requests+'" /><li id="requirement_'+num_requests+'"  class="'+li_class+'">'+text+'</li>'+newRemove(num_requests);

 		var lis = $("#requirments").html();
		lis = lis + li;

		$("#requirments").html(lis);
		$("button .remove_requirment").button();
		$("#new_requirment").val("");

		num_requests++;
 	}

 	function removeRequirment(){
 		var to_remove = this.id;
 		
 		lis = $("#requirments li");
 		$("#requirments").html("");
 		num_requests = 0;
 		lis.each(function(idx){
 			if(this.id!="requirement_"+to_remove){
 				newRequirment($(this).html(), 'new');
 			}
 			else if(to_remove<min_num){
 				newRequirment($(this).html(), 'cut');
 			}
 		});

 	}

    $(function() {

    	$(document).delegate(".remove_requirment", "click", removeRequirment);

        $("#enddate").datepicker();
        $("#new_offer").button();
        
        var availablePlatforms = ["Wordpress", "Salesforce", "Magento", "iOS", "Joomla"];

        $("#platform").autocomplete({
        	source: availablePlatforms
        });

        $("#new_requirement_button")
        	.button()
        	.click(function(){
        		var text = $("#new_requirment").val();
        		if(text!=""){
	        		newRequirment(text, 'new');
	        	}
	        	else{
	        		alert("moron!");
	        	}
        	});

    });
</script>

<div id="mainConent" style="padding: 15px">
	<form action="project.cfm" method="POST" id="new_offer_form">
		<p>
			Project Title:<br/>
			<textarea rows="2" cols="50" name="project_title"></textarea>
		</p>
		<p>
			Platform: <input class="ui-autocomplete-input" type="text" name="platform"/>
		</p>
		<p>
			Description:<br/>
			<textarea rows="4" cols="50" name="requirements"></textarea>
		</p>
		<p>
			Requirements:<br>
			<ul id="requirments">
				<li id="requirement_0">Can Only Strike</li><button class="remove_requirment" id="0" >X</button>
				<li id="requirement_1">Still Can Only Strike</li><button class="remove_requirment" id="1" >X</button>
			</ul>
			<textarea rows="2" cols="50" id="new_requirment" value=""></textarea><br />
			<input id="new_requirement_button" value="Add">
			
		</p>
		<p>
			End Date: <input type="text" id="enddate" name="enddate" />
		</p>
		<p>
			Tags: <input type="text" name="tags"/>
		</p>
		<p>
			Bounty: $<input type="text" name="bounty" value="1.00" min="1"/>
		</p> 
		<p>
			<input type="submit" id="new_offer" name="new_offer" />
		<p>

	</form>
</div>