# JadeStudio

## Setup

1. Load JadeOrbSchema into your system
2. Load JadeStudioModelSchema and JadeStudioOrbSchema using Schemas/LoadAll.mul
3. Open the class browser for JadeStudioOrbSchema 
3. Navigate to JadeStudioOrbSchema::initApp()
4. Change the "Root" constant to be your `root\` directory in this directory
5. Run the Application on JadeStudioOrbSchema InitApp
6. Run JadeScript::populateJadeStudio()
7. Navigate to http://localhost:6767/
8. Enter your email (by default john.smith@example.com should be registered)

Refreshing all data:

1. Run JadeScript::deleteAllUsers()
2. Run steps 5 & 6 again.
