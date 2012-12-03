<cfimport prefix="" taglib="/MillionMunkeys/TrafficMunkey_1_7/">

<site title="Code Bounty" template="template.cfm" enableCaching="false" dsn="angelhack">
	<!-- Template Links -->
	<link name="search" url="search.cfm" />
	
	<!-- Objects -->
	<object id="Singly" name="Session.User" component="SinglyUser" />
	
	<!-- Home -->
	<page title="Code Bounty" url="home.cfm">
		<link name="search" url="search.cfm" />
	</page>
	
	<site template="sub_template.cfm">
		<!-- Projects -->
		<page title="Search Projects" url="search.cfm" />
		<page title="Project Details" url="project.cfm" />
		<page title="Edit Project" url="project_edit.cfm" />
		<page title="Add Project" url="new.cfm" template="project.cfm" />
		<page title="List" url="list.cfm" />
		
		<!-- My Account -->
		<site title="My Account">
			<page title="My Account" url="profile.cfm" />
		</site>
		
		<!-- Security -->
		<site title="Singly Authorization">
			<page title="Sign In" url="login.cfm">
				<link name="singly" url="https://api.singly.com/oauth/authenticate" />
			</page>
			<page url="logout.cfm">
				<link name="success" url="" />
			</page>
			<page url="singly.cfm" object="Singly" method="success" hidden="true">
				<link name="success" url="profile.cfm" />
			</page>
		</site>
	</site>
</site>