# JV Summit App

## Setup:

1. 	Load `JadeOrbSchema` into your system
2. 	Load `JvsCutSchema` into your system
3. 	The method `JvsCutSchema::JvsCutSchema::initApp` has two constants; `Root` and `ProjectorRoot`
	Set the constants to the path of `dist\` and `dist_projector\` in this directory
4.	In `JVsCutSchema`, run the JadeScript `populateData`
5.	You can now run the application `Cutapp` in `JvsCutSchema`

By default the app will listen on localhost port 9797; you can access this by browsing to http://localhost:9797/

The address and port can be changed by modifying the settings of the `Cutapp` application in the Application Browser.

Two dummy user accounts are created:
* marty@example.com (has access to the Technical stream)
* george@example.com (has access to the Business stream)
	
Enter the email address of either of these accounts to log in.