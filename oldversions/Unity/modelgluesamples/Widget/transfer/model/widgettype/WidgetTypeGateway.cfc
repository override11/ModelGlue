<!---
LICENSE INFORMATION:

Copyright 2007, Joe Rinehart
 
Licensed under the Apache License, Version 2.0 (the "License"); you may not 
use this file except in compliance with the License. 

You may obtain a copy of the License at 

	http://www.apache.org/licenses/LICENSE-2.0 
	
Unless required by applicable law or agreed to in writing, software distributed
under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR 
CONDITIONS OF ANY KIND, either express or implied. See the License for the 
specific language governing permissions and limitations under the License.

VERSION INFORMATION:

This file is part of Model-Glue Model-Glue: ColdFusion (2.0.304).

The version number in parenthesis is in the format versionNumber.subversion.revisionNumber.
--->


<cfcomponent output="false">

<cffunction name="init" output="false">
	<cfargument name="datasource" />
	
	<cfset variables._ds = arguments.datasource />
	
	<cfreturn this />
</cffunction>	

<cffunction name="listWidgetCount" returntype="query" output="false">
	<cfset var result = "" />

	<cfquery name="result" datasource="#variables._ds.getDsn()#" username="#variables._ds.getUsername()#" password="#variables._ds.getPassword()#">
		SELECT
			wt.widgetTypeId,
			wt.name,
			COUNT(widgetId) as widgetCount
		FROM
			widgetType wt
			JOIN widget w ON wt.widgetTypeId = w.widgetTypeId
		GROUP BY
			wt.widgetTypeId,
			wt.name
		ORDER BY
			wt.name
	</cfquery>	
	
	<cfreturn result />			
</cffunction>

</cfcomponent>
	
