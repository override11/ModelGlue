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


﻿<cfcomponent>

	<cffunction name="handleEvent" access="remote">
		<cfset var cspath = "/modelgluetests/unittests/gesture/ColdSpring.xml" />
		<cfset var bootstrapper = createObject("component", "ModelGlue.gesture.loading.ColdSpringBootstrapper")>
		<cfset var loader = "" />
		<cfset var obj = "" />
		<cfset var beanFactory = "" />
		<cfset var ec ="" />
		<cfset bootstrapper.coldspringPath = cspath>
		<cfset bootstrapper.coreColdspringPath = cspath>
		<cfset bootstrapper.modelGlueBeanName = "modelglue.ModelGlue">
		
		<cfset request._modelglue.bootstrap.bootstrapper = bootstrapper />
		<cfset request._modelglue.bootstrap.initializationRequest = true />
		<cfset request._modelglue.bootstrap.initializationLockPrefix = expandPath(".") & "/.modelglue" />
		<cfset request._modelglue.bootstrap.initializationLockTimeout = 60 />
		
		<cfset mg = bootstrapper.createModelGlue() />
		<cfset request._modelglue.bootstrap.framework = mg />
		<cfset arrayAppend(mg.configuration.assetmappings, "/modelgluetests/unittests/gesture/modules/asset") />
		<cfset arrayAppend(mg.configuration.viewmappings, "/modelgluetests/unittests/gesture/modules/asset") />
		<cfset beanFactory = mg.getInternalBeanFactory() />
		<cfset beanFactory.loadBeans(expandPath("/modelgluetests/unittests/gesture/externaladapters/beaninjection/ColdSpring.xml")) />
		<cfset beanFactory.loadBeans(expandPath("/modelgluetests/unittests/gesture/modules/asset/CS_AssetManagerBeans.xml")) />
		<cfset loader = mg.getInternalBean("modelglue.ModuleLoaderFactory").create("XML") />
		<cfset loader.load(mg, "/modelgluetests/unittests/gesture/modules/asset/EventWithAsset.xml") />		

		<cfset ec = mg.handleRequest() />
		
	</cffunction>

</cfcomponent>
