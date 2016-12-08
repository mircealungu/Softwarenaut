Softwarenaut
============

> "We present Softwarenaut -- a tool which supports architecture recovery through interactive exploration and visualization. We present the features of the tool together with the architecture recovery process that it supports using as a case-study ArgoUML, a well-known open source Java system." (From [Lungu et al., Evolutionary and Collaborative Software Architecture Recovery with Softwarenaut](http://scg.unibe.ch/scgbib?query=Lung14a&display=abstract))

### Aggregating Low Level Relationships
A software system usually contains a range of low-level relations between software artefacts: class inheritance, method invocations, variable accesses. Softwarenaut aggregates these low-level relations along a hierarcical decomposition of a system (e.g. the package structure in Java). The results is that Softwarenaut can represent high-level overview of the architectural relationships between the modules in a system.

The figure presents the architecture of Softwarenaut in Softwarenaut (version 3.202). The architecture is considered to be the high-level relationships between the main modules. The modules are represented proportional in size to their number of lines of code and the relationships are proportional to the number of low-level relationships abstracted.

![architecture-of-softwarenaut](https://cloud.githubusercontent.com/assets/464519/21022444/eb463a12-bd7c-11e6-9a37-f6925f371eff.png)

### Augmenting Structure With Evolutionary Information
The following view presents Softwarenaut visualizing itself but this time, augmenting the structure with evolutionary information. On top of the architectural view we have highlighted the classes that have the most activity in the recent evolution of the system (as of February 2011). One can see that it is a minority of classes that have been changing. 

![evolution screenshot](https://cloud.githubusercontent.com/assets/464519/21022349/9ec2f748-bd7c-11e6-87ad-29c5332caba9.png)

### Further Reading

To learn more about the tool we reccomend the following article: 
- [Evolutionary and Collaborative Software Architecture Recovery with Softwarenaut](http://scg.unibe.ch/archive/papers/Lung14a.pdf)

### To Cite Use This BibTeX
@article{Lung14a,
	Annote = {internationaljournal},
	Author = {Mircea Lungu and Michele Lanza and Oscar Nierstrasz},
	Doi = {10.1016/j.scico.2012.04.007},
	Journal = {Science of Computer Programming},
	Medium = {2},
	Number = {0},
	Pages = {204 - 223},
	Peerreview = {yes},
	Publisher = {Elsevier},
	Title = {Evolutionary and Collaborative Software Architecture Recovery with {Softwarenaut}},
	Url = {http://scg.unibe.ch/archive/papers/Lung14a.pdf},
	Volume = {79},
	Year = {2014}}


Folder structure:
====

- dist-base: base folder for
  building the distributions
for the different OSes.

- dist-scripts: scripts to
  build the distributions 
