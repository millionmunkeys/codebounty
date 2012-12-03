<cflogout />
<cfset StructClear(Session) />
<cflocation url="#Request.LinkMunkey.get('success').get('url')#" />