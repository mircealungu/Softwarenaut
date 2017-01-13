# Installation


1. Install [Cincom VisualWorks](http://www.cincomsmalltalk.com/). You need it since Softwarenaut is built on top of it. You can obtain a Personal Use License and install it from the [download page](http://www.cincomsmalltalk.com/main/developer-community/trying-cincom-smalltalk/try-cincom-smalltalk/) on the Cincom website. 

1. Clone the repo at https://github.com/mircealungu/Softwarenaut and install it locally in a folder that from here on we will refer as /local/Softwarenaut

1. Open the visualnc.im image from the /images folder in your VisualWorks installation

1. Select the System->Settings and make sure that 

	- in the System category you have the VisualWorks home directory set correctly to the place where you installed VW
	
	- in the Store>Prerequisites category you have Load latest version option selected (if you don't do this, you'll have to do about 15 extra selections of package versions as you're loading the code. and you don't want that, do you?)

1. From the window menu select *Store->Connect to repository...* then punch in the following information before you Connect to the Bern Store by selecting the *Connect* button: 

	- Environment: *db.iam.unibe.ch:5432_scgStore*
	- Username: *storeguest* 
	- Password: *storeguest*

1. From the window menu select the *Store->Published Items* which now should be enabled

1. Find in the Bundles and Packages list the one named *SoftwarenautDevelopment* and select it. In the list of versions on the right select *Load* from the contextual menu of the most recent version. As the code is loading you might get some Unloadable Definitions warnings. Don't worry and just close those windows once the loading is done. 

1. In the main window type the following code (where you replace the path with your own path, evidently, and make sure that you have a trailing separator). Select the text, bring up the contextual menu, and choose *Do It* from there.

    ```Smalltalk.SN.Softwarenaut installationFolder: '/local/Softwarenaut/'```

1. From the window menu select *File->Save Images As...* and save the current state of your image in the /local/Softwarenaut/st-images/ folder. From now on, you can simply open this image.
