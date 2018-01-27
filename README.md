Kubernetes Experiments
======================

<div>
<img src="https://cdn.rawgit.com/kubernetes/kubernetes/13c80a99/logo/logo.svg" width="200">
</div>

Repository to keep track with my findings from playing around with k8s.

As of 2017-12-22 I'm convinced that kubernetes will solve all of my problems.

Running
-------

Kubernetes objects are authored in [dhall](https://github.com/dhall-lang/dhall-lang),
which is compiled to YAML and passed to `kubectl apply`.

Everything's tied together with a [Makefile](Makefile), so you should just be able to make changes
to the dhall, then `make` to create the YAML, or `make deploy` to deploy to the cluster.

Because there are some differences between running on GKE and Minikube
(primarily where the docker image registry lives) you can tell dhall when
you're pointing at GKE by passing `IS_GKE=True` to make like so:

```
make clean all IS_GKE=True
```
