### Importing a System

In order to make Softwarenaut independent of the language that your system is written in, we have made it work on an intermediate representation that can work with any object-oriented language. That representation is the FAMIX meta-model.

There are a few ways in which you can obtain a FAMIX model of your system:

For Smalltalk systems, the importer is in the same image with Softwarenaut
Using a third-party tool that can analyze your source-code and export it into FAMIX
Importing a system from the SourcererDB (work in progress)
Download one of the sample systems that are available online (work in progress)

When you run Softwarenaut, it runs out of a Smalltalk "image", a full smalltalk system whose source code co-exists with that of Softwarenaut and is interpreted by a Smalltalk VM. This means that the tool has access to its own source code together with a few other thousand classes that make up a basic Smalltalk distribution.

You can import and analyze any system from smalltalk by selecting the menu option Import->From Smalltalk...

Once you select the option, you are presented with a list of namespaces that you can import. One special namespace is SN - the namespace of the Softwarenaut itself. If you load it you can analyze the system with itself.



### Importing Multiple Versions

Softwarenaut provides also multi-version analysis support. For this one needs to have multiple models of the same system.

To load multiple models of the same system for multi-version analysis choose the option File>Import History of FAMIX (2.1) Models and in the pop-up dialog select a directory where you have already prepared models for several versions of the system that you are analyzing.

Warning: For large systems, importing a single version can take a few minutes. Consequently importing multiple versions will take proportionally more time. This means that you want to keep the number of versions that you analyze small. Select the versions that you want to analyze accordingly.

Once all your versions are loaded, you are presented with a Model History builder. From the left panel select the versions that constitute your history and add them to the right panel. Then select "Build History" and give a name to your history (usually the name of the system).

After this Softwarenaut builds the internal hierarchical graphs for every version and you are ready to proceed to analysis. The models for all the versions will now know that they are part of the same history.

Multi-Version views will be enabled in the detail view tab. One such example is the Relationship Evolution detail view for dependencies.