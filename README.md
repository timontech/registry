# Timon environments

Timon efficiently manages your cloud infrastructures 🚀

| :memo: | Timon is a work in progress. Features will evolve over time and there may be breaking changes between releases. |
|-|:-|

## Usage

```
timonctl environment import https://github.com/timontech/environments terraform/base
timonctl environment list
timonctl environment edit terraform/base
timonctl environment update terraform/base
timonctl environment delete terraform/base
```

## Ansible

Ansible is a radically simple IT automation platform that makes your
applications and systems easier to deploy and maintain. Automate everything
from code deployment to network configuration to cloud management, in a
language that approaches plain English, using SSH, with no agents to install
on remote systems.

* ansible/base

## Kubernetes

Kubernetes, also known as K8s, is an open source system for managing containerized
applications across multiple hosts. It provides basic mechanisms for deployment,
maintenance, and scaling of applications.

* kubernetes/kubectl

## Terraform

Terraform enables you to safely and predictably create, change, and improve infrastructure.
It is an open source tool that codifies APIs into declarative configuration files that can
be shared amongst team members, treated as code, edited, reviewed, and versioned.

* terraform/base
* terraform/azure
* terraform/openstack
* terraform/terragrunt
