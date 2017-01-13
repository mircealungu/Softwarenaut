This README is a very high-level description of the project capabilities. For details and case studies, see

1. the journal article that describes the tool ([preprint pdf](http://scg.unibe.ch/archive/papers/Lung14a.pdf), [bibtex](http://scg.unibe.ch/scgbib?_k=mhZxW1Pf&query=Lung14a&display=bibtex))

1. the conference paper that describes the way we visualized hierarchical clusterings of software systems ([preprint pdf](http://scg.unibe.ch/archive/papers/Lung05aExploreSemanticClusters.pdf), [bibtex](http://scg.unibe.ch/scgbib?_k=v0zYApEK&query=Lung05a&display=bibtex))

For installation instructions, see [Installation](INSTALL.md)


# Softwarenaut

> "[...] supports architecture recovery through interactive exploration and visualization. Interactive exploration, filtering and contextual details, are enhanced with evolutionary capabilities when versioning information is available." (Lungu et al., [Evolutionary and Collaborative Software Architecture Recovery with Softwarenaut](http://scg.unibe.ch/scgbib?query=Lung14a&display=abstract))

### Aggregating Low Level Relationships
A software system can be seen as a network of numerous low-level relations between software artefacts: class inheritance, method invocations, variable accesses. 

Softwarenaut aggregates these low-level relations along a hierarcical decomposition of a system (e.g. the package structure in Java). The results is that Softwarenaut can represent high-level overview of the architectural relationships between the modules in a system.

The figure presents an automatically generated view of the architecture of Softwarenaut visualized with Softwarenaut (v 3.202). The modules are represented proportional in size to their number of lines of code and the relationships are proportional to the number of low-level relationships abstracted.

![architecture-of-softwarenaut](https://cloud.githubusercontent.com/assets/464519/21022444/eb463a12-bd7c-11e6-9a37-f6925f371eff.png)


### But Software Systems Evolve
The following view presents Softwarenaut visualizing itself but this time, augmenting the structure with evolutionary information. 

On top of the architectural view we have highlighted the classes that have the most activity in the recent evolution of the system (as of February 2011). One can see that it is a minority of classes that have been changing. 

![evolution screenshot](https://cloud.githubusercontent.com/assets/464519/21022349/9ec2f748-bd7c-11e6-87ad-29c5332caba9.png)


### Even Relationships Evolve...

The following figure presents the evolution filmstrip for the relationship between the uml and kernel modules in ArgoUML between 2003 and 2007. Inheritance relationships are represented with red and invocation relationships are represented with black. One can see that in 2004 a reverse dependency was introduced between kernel and uml and it remained in the system until its latest analyzed version

![screen-shot-2011-10-10-at-5 27 36-pm](https://cloud.githubusercontent.com/assets/464519/21023545/4c41a97e-bd81-11e6-81b1-fb038bd3b156.png)

### Details About Module Evolution

This module detail view illustrates the amount of changes that happen in a module through the versions.

The module is represented in every analyzed version as a treemap. When a new class is introduced it is marked with yellow. When a class changes it is colored with a shade of blue which is darker for larger changes.

The figure illustrates the evolution of the cognitive package in ArgoUML. As one can see the package is pretty stable. 

![screen-shot-2011-10-14-at-1 56 14-am](https://cloud.githubusercontent.com/assets/464519/21023626/9cffc058-bd81-11e6-906f-4f62c440717a.png)



### Further Reading

For more documentation see the /docs folder which includes:

- [Importing a system](docs/importing.md)

- [Filtering nodes and edges](docs/filtering.md)


For details and case studies, see 

1. the journal article that describes the tool ([preprint pdf](http://scg.unibe.ch/archive/papers/Lung14a.pdf), [bibtex](http://scg.unibe.ch/scgbib?_k=mhZxW1Pf&query=Lung14a&display=bibtex))

1. the conference paper that describes the way we visualized hierarchical clusterings of software systems ([preprint pdf](http://scg.unibe.ch/archive/papers/Lung05aExploreSemanticClusters.pdf), [bibtex](http://scg.unibe.ch/scgbib?_k=v0zYApEK&query=Lung05a&display=bibtex))


For installation instructions, see [Installation](INSTALLATION.md)







