
### Filtering

Filters are a tool for coping with the explosion of information during exploration. There are two types of filters: entity filters and relationship filters. The Filters Panel allows the user to add and remove various filters during exploration. The filters panel appears instead of the Detail Panel when no entity is selected in the Architectural View.

Several examples of entity filters are:

- Size Related: Filters all the modules that are under a certain threshold (Small Modules) or above a certain threshold (Large modules).
- Evolution Related:

Several types of relationship filters are:

- Size Related: Filter the relationships based on the number of low-level explicit relationships (e.g. invocations, inheritances, etc.) that are abstracted in the visible relationships. Examples are: Weak dependencies, Strong dependencies. This can be useful filter when starting the analysis of systems that have a large number of modules and dependencies between them.
- Directional: Unidirectional and bidirectional relationships can be filtered.
- Evolutionary: they filter relationships based on the evolution of the relationships during the lifetime of the system. Examples are: lifetime, newborn, old, new. They are available only when multiple versions of a system are loaded. They are useful for either limiting the amount of information at the first encounter with a system (e.g. lifetime) or trying to find problems (e.g. newborn combined with bidirectional).
