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
---><cfsilent><cfapplication name="StockQuote" sessionmanagement="true"/>

<!--- 
  If your path to ModelGlue.xml is custom, change it here.  Otherwise,
  it will default to Config/ModelGlue.xml
	<cfset ModelGlue_CONFIG_PATH = expandPath(".") & "/config/ModelGlue.xml" />
--->

<!--- If your path to ModelGlue.cfm is different, you'll need to change this line. --->
</cfsilent><cfinclude template="/ModelGlue/ModelGlue.cfm" />