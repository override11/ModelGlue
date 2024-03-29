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


Model-Glue
Joe Rinehart (joe.rinehart@gmail.com)
Model-Glue Model-Glue: ColdFusion (2.0.304).

Well, now you've gone and done it.  

You're probably thinking "Ok, I've downloaded it, what next?"

As the good book says:  "Don't Panic"

** URLS TO KNOW ** 

http://www.model-glue.com - The official Model-Glue web site.
http://svn.model-glue.com - The Subversion repository where you can get the latest Model-Glue code.
http://trac.model-glue.com - Model-Glue defect and feature request tracking.

** FULL DOCUMENTATION **

There are detailed installation instructions in the ModelGlue/Docs/index.html file.  Seriously.  Check it out.  About 10x more docs than were ever written for Model-Glue 1.x.

** QUICK INSTALLATION INSTRUCTIONS **

If you're impatient, this should get you started:

1. Download and install ColdSpring from http://www.coldspringframework.org.  

You may need to point a mapping named /coldspring to the directory that *contains* a folder named "beans".

2. Copy the ModelGlue (inside the same directory as this file) folder to whatever ColdFusion sees as "/ModelGlue".  The framework is now installed.  

You may need to point a mapping named /ModelGlue to the directory (/ModelGlue) that contains ModelGlue.cfm.

3. Copy the modelgluesamples folder to /modelgluesamples.  The samples are now installed.

4. Run some samples - try http://[host]/modelgluesamples/legacysamples/nameuppercaser or http://[host]/modelgluesamples/legacysamples/contactmanager.

5. If you want to use Reactor or Transfer to do scaffolding and automatic database integration, see the instructions in the application template's ColdSpring.xml file for configuring your ORM of choice.  Then, check out "How to Use Generic Database Messages" and "How to Use Scaffolds" under the How To's section of the documentation.

** WHEN THINGS BREAK **

Visit http://trac.model-glue.com, click the "New Ticket" button, and fill out the form.  For anything you fill out, put the following, or it'll likely wind up at the bottom of the queue:

1.  Exactly what you did
2.  What happened (include exceptions, stack traces, sample code, etc.!)
3.  What you thought should of happened

** LICENSE INFORMATION **

Until Thursday, January 4, 2007, Model-Glue was released under for Lesser GPL (LGPL).

In order to maintain clean licensure of generated code, it has been moved to the 
Apache Software License 2.0 (ASL2).

Use of any third party frameworks, such as ColdSpring, Transfer, or Reactor falls
under the respecitve framework's license.

