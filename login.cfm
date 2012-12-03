<cfset baseURLPath = Request.TrafficMunkey.get('baseURLPath') />
<cfset client_id = "a1585e35cb06673ee29b37313b193fe5" />
<cfset redirect_uri = "http#iif(CGI.HTTPS eq 'on','s','')#://#CGI.SERVER_NAME##baseURLPath#singly.cfm" />
<style type="text/css">
.login_button {
	margin-top: 1em;
	margin-bottom: 1em;
	text-align: center;
}
.right {
    float: left;
    width: 300px;
    margin-top:18px;
}

.left {
    float: left;    
    width: 380px;
    margin-top:22px;
    margin-right:25px;
    line-height: 1.4;

}
</style>
<cfoutput>

<div class="left"><span class="lightText" style="font-size:45px;" margin-top:"10px" margin-bottom:"15px";>Social Sign in</span> </h1></br>
CodeBounty dosnt save any of your information, so we please ask you to sign in with our socail partners. Click the buttons to right to get connect and started.</br> More text about why you should give us all of your personally identifiable information! </div>

<div class="right">
<div class="login_button"><a href="https://api.singly.com/oauth/authenticate?service=linkedin&client_id=#client_id#&redirect_uri=#redirect_uri#"><img src="#baseURLPath#images/buttons/linkedin.jpg" /></a></div>
<div class="login_button"><a href="https://api.singly.com/oauth/authenticate?service=twitter&client_id=#client_id#&redirect_uri=#redirect_uri#"><img src="#baseURLPath#images/buttons/twitter.jpg" /></a></div>

<div class="login_button"><a href="https://api.singly.com/oauth/authenticate?service=facebook&client_id=#client_id#&redirect_uri=#redirect_uri#"><img src="#baseURLPath#images/buttons/facebook.jpg" /></a></div>
<div class="login_button"><a href="https://api.singly.com/oauth/authenticate?service=github&client_id=#client_id#&redirect_uri=#redirect_uri#"><img
src="#baseURLPath#images/buttons/github.jpg" /></a></div>

</div>
<div style="clear:both"></div>

</cfoutput>