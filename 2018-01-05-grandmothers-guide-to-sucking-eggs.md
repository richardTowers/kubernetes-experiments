TODO - involve Anshul in this.

A Grandmothers Guide To Sucking Eggs
====================================

Or: how I learned to solve all our problems with Kubernetes.

Introduction
------------

I'm going to talk about the problems involved in running a microservices
architecture, and how they're currently being solved in GOV.UK Verify.

I will then explore how we could achieve the same result in a dramatically
simpler, more flexible and easier to maintain way by making use of the recent
innovations in container orchestration, in particular Docker and Kubernetes.

To be clear, the status quo is not all doom and gloom - Verify manages a
complex cluster of services with a (relatively) low overhead, and in many ways
is close to "the DevOps dream": There are many releases per day, developers have
visibility into, and involvement in, almost all aspects of the infrastructure.
But good enough shouldn't be the enemy of better.

Running Verify - Microservices, Puppet, Terraform, Fabric, Oh My!
-----------------------------------------------------------------

TODO - how dows Verify work at the moment? - don't go in to any pros or cons -
simply lay out a factual account of how Verify works. Ask Russell to review
this once it's done. Do mention how much code we have. Do mention blackbox /
GPG for secrets.

Container Orchestration - Has science gone too far?
---------------------------------------------------

TODO - Super brief introduction to container orchestration in general, and Kubernetes
in particular. Do some live demos of replacing bits of the Verify architecture
with Kube to make it concrete. Don't forget to talk about persistence, secrets,
- the tricky things. You're allowed to be critical.

