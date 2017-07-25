Process Diagnostics
===================

Introducing __ProcessDiagnostics__ and it's helper module suite. (Is this ProcessWire's first community-created module suite?)

[![Example Screenshot in English](https://processwire.com/talk/uploads/monthly_05_2014/post-465-0-19487500-1401132201_thumb.png)](https://processwire.com/talk/uploads/monthly_05_2014/post-465-0-19487500-1401132201.png)
[![Example Screenshot in German](https://processwire.com/talk/uploads/monthly_05_2014/post-465-0-70031800-1401214763_thumb.jpg)](https://processwire.com/talk/uploads/monthly_05_2014/post-465-0-70031800-1401214763.jpg)

Description
-----------

This suite adds a page under the setup menu that displays information about your installation. Each section's data is provided by a specialist diagnostic helper module but it is all collected and displayed by ProcessDiagnostics.

The ProcessDiagnostics module itself does not encode any knowledge about what makes up a good or bad setting in PW - (that's done by the helper modules) - but it does the following...

- Gather the diagnosics (thanks to PW's hook system)
- Display the collected diagnostics
- Provide helper functions for describing some common things
- Dispatch actions to diagnostic provider modules (again thanks to PW's hook system)

And eventually it will:

- Allow control of the verbosity of the output
- Allow the output to be emailed to a sysop
- Store the results between visits to the page
- Detect differences between results at set times
- Send a notification on detection of changes

Although I am curating the collection, anyone is welcome to fork the repo, make changes in a topic branch, and submit pull requests. I've already had submissions from horst and Nico.


Diagnostic Providers
--------------------

The current diagnostic providers include...

- __DiagnosePhp__ - Simple diagnostics about the PHP envirnoment on the server
- __DiagnoseModules__ - An ajax based module version checker by @Nico
- __DiagnoseImagehandler__ - Lets you know about GD + Imagick capabilities by @horst
- __DiagnoseDatabase__ - Checks each DB table and lets you know what engine and charset are in use
- __DiagnoseWebserver__ - Checks the webserver setup
- __DiagnoseFilesystem__ - Looks at how your directory and files are configured and warns of permission issues (currently incomplete)

Some of them need extending and are currently little more than skeletons. If you really want a bare bones demonstration
module then take a look at _DiagnoseExample_


Translations
------------

Here's a list of all the known translations

- English (the default)
- [German](http://processwire.com/talk/topic/925-german-de-de/page-4#entry63666) (by Manfred62 - thank you!)

Help translating this suite to other languages is always welcome.
