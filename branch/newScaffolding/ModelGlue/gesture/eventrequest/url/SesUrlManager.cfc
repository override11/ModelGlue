<!---
LICENSE INFORMATION:

Copyright 2011, Joe Rinehart, Dan Wilson

Licensed under the Apache License, Version 2.0 (the "License"); you may not 
use this file except in compliance with the License. 

You may obtain a copy of the License at 

	http://www.apache.org/licenses/LICENSE-2.0 
	
Unless required by applicable law or agreed to in writing, software distributed
under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR 
CONDITIONS OF ANY KIND, either express or implied. See the License for the 
specific language governing permissions and limitations under the License.

VERSION INFORMATION:

This file is part of @versionLabel@ (@versionNumber@).

The version number in parentheses is in the format versionNumber.subversion.revisionNumber.

If the version number appears as 'versionNumber' surrounded by @ symbols
then this file is a working copy and not part of a release build.
--->


<cfcomponent output="false" hint="Default URL manager that uses a conventional CGI.PATH_INFO syntax for determining event names and building ""SES"" URLs.">

<cffunction name="init" output="false" hint="Constructor.">
	<cfset variables._mg = "" />
	<cfreturn this />
</cffunction>

<cffunction name="setModelGlue" output="false" hint="Sets the core Model-Glue framework instance this URL manager is concerned with.">
	<cfargument name="modelglue" required="true" hint="Instance of ModelGlue." />
	<cfset variables._mg = arguments.modelglue />
</cffunction>


<cffunction name="populateLocation" output="false" hint="Receives an event context and populates the ""self"", ""myself"", and ""eventValue"" values.">
	<cfargument name="eventContext" />
	
	<cfset var eventValue = variables._mg.configuration.eventValue />

	<cfset arguments.eventContext.setValue("eventValue", variables._mg.configuration.eventValue) />
	<cfset arguments.eventContext.setValue("self", cgi.script_name) />
	<cfset arguments.eventContext.setValue("myself", "#cgi.script_name#/") />
</cffunction>

<cffunction name="extractValues" output="false" hint="Extracts values that should be treated as URL parameters.  In the default UrlManager, this simply returns the URL scope.">
	<cfargument name="mockCgiScope" required="false" hint="Allows a mock CGI scope to be used with unit tests." />
	
	<cfset var result = structNew() />
	<cfset var key = "" />
	<cfset var i = "" />
	<cfset var eventValue = variables._mg.configuration.eventValue />
	<cfset var pathArray = arrayNew(1) />
	
	<cfif structKeyExists(arguments, "mockCgiScope")>
		<cfset pathArray = listToArray(arguments.mockCgiScope.PATH_INFO, "/") />
	<cfelseif cgi.PATH_INFO NEQ cgi.SCRIPT_NAME>
			<cfset pathArray = listToArray(cgi.PATH_INFO, "/") />
	</cfif>
		
	<cfif arrayLen(pathArray)>
		<cfset result[eventValue] = pathArray[1] />
	</cfif>
	
	<cfloop from="2" to="#arrayLen(pathArray)#" index="i">
		<cfif i mod 2 eq 0>
			<cfset key = pathArray[i] />
		<cfelse>
			<cfset result[key] = pathArray[i] />
		</cfif>
	</cfloop>
	
	<cfreturn result />
</cffunction>

<cffunction name="linkTo" output="false" hint="Builds a link to the specified event, appending the listed values from the context and the anchor position specified.">
	<cfargument name="event" default="" hint="The event to which the url should link." />
	<cfargument name="append" default="" hint="The list of values to append." />
	<cfargument name="anchor" default="" hint="The anchor literal for the resultant URL." />
	<cfargument name="eventContext" default="" hint="Required if using append." />
	<cfargument name="preferredContext" default="" hint="An optional context to use as a source for the values to append." />
	
	<cfset var link = "#cgi.script_name#/" />
	<cfset var i = "" />
	
	<!--- Add the event --->
	<cfset link = link & arguments.event />
	
	<!--- Add values --->
	<cfloop list="#arguments.append#" index="i">
		<cfif isStruct(arguments.preferredContext) and structKeyExists(arguments.preferredContext, i)>
			<cfset link = link & "/#i#/#urlEncodedFormat(arguments.preferredContext[i])#" />
		<cfelse>
			<cfset link = link & "/#i#/#urlEncodedFormat(arguments.eventContext.getValue(i))#" />
		</cfif>
	</cfloop>
	
	<!--- Add anchor --->
	<cfif len(arguments.anchor)>
		<cfset link = link & "###arguments.anchor#" />
	</cfif>
	
	<cfreturn link />
</cffunction>

<cffunction name="formatUrlParameter" output="false" hint="Formats a key/value pair for the URL.">
	<cfargument name="key" />
	<cfargument name="value" />
	
	<cfreturn "/#arguments.key#/#arguments.value#" />
</cffunction>

</cfcomponent>
