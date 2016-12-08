Softwarenaut
============
Tool for visualzing the architecture of a software system. 

A software system usually contains a range of low-level relations between software artefacts: class inheritance, method invocations, variable accesses. Softwarenaut aggregates these low-level relations along a hierarcical decomposition of a system (e.g. the package structure in Java). The results is that Softwarenaut can represent high-level overview of the architectural relationships between the modules in a system.

The figure presents the architecture of Softwarenaut in Softwarenaut (version 3.202). The architecture is considered to be the high-level relationships between the main modules. The modules are represented proportional in size to their number of lines of code and the relationships are proportional to the number of low-level relationships abstracted.

![evolution screenshot](https://cloud.githubusercontent.com/assets/464519/21022349/9ec2f748-bd7c-11e6-87ad-29c5332caba9.png)

![architecture-of-softwarenaut](https://cloud.githubusercontent.com/assets/464519/21022444/eb463a12-bd7c-11e6-9a37-f6925f371eff.png)




Folder structure:
====

- dist-base: base folder for
  building the distributions
for the different OSes.

- dist-scripts: scripts to
  build the distributions 
