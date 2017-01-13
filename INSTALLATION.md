# Installation

Softwarenaut is built on top of [Cincom VisualWorks](http://www.cincomsmalltalk.com/) a of which, a Personal Use Licensed version you can [download](http://www.cincomsmalltalk.com/main/developer-community/trying-cincom-smalltalk/try-cincom-smalltalk/) from the Cincom website. 

- Install VisualWorks 

- Clone the repo at https://github.com/mircealungu/Softwarenaut and install it locally in a folder that from here on we will refer as /local/Softwarenaut

- Open the visualnc.im image from the /images folder in your VisualWorks installation

- Select the System->Settings and make sure that 

	- in the System category you have the VisualWorks home directory set correctly to the place where you installed VW
	
	- in the Store>Prerequisites category you have Load latest version option selected (if you don't do this, you'll have to do about 15 extra selections of package versions as you're loading the code. and you don't want that, do you?)

- From the window menu select *Store->Connect to repository...* then punch in the following information before you Connect to the Bern Store by selecting the *Connect* button: 

	- Environment: db.iam.unibe.ch:5432_scgStore
	- Username: storeguest (or your bern store username) 
	- Password: storeguest (or your bern store password)

- From the window menu select the *Store->Published Items* which now should be enabled

- Find in the Bundles and Packages list the one named *SoftwarenautDevelopment* and select it. In the list of versions on the right select *Load* from the contextual menu of the most recent version. As the code is loading you might get some Unloadable Definitions warnings. Don't worry and just close those windows once the loading is done. 

- In the main window type the following code (where you replace the path with your own path, evidently, and make sure that you have a trailing separator). Select the text, bring up the contextual menu, and choose *Do It* from there.

    ```Smalltalk.SN.Softwarenaut installationFolder: '/local/Softwarenaut/'```

- From the window menu select *File->Save Images As...* and save the current state of your image in the /local/Softwarenaut/st-images/ folder. From now on, you can simply open this image.
