---
title: Introduction
author_staff_member: chris
layout: docs
permalink: /docs
weight: 1
---

## Why?

This project was spawned because I thought it was ridiculous that we have so many pieces of sepatate technology. But 
nobody apparently thought it was a good idea to combine them together, at least then make it free. There are plenty 
of projects to handle each repository. But nothing does everything together.

I have some years of experience in writing docker containers. Even running a Kubernetes cluster for my own projects. 
I am going to reuse this experience in order to start building a set of containers which can work together but 
provide multiple repository support.

## General outline

I plan to build a set of microservices which can accomplish one goal and work together collectively. By splitting the 
project into blocks like this, it's possible to share common components and reduce the amount of duplication.

The services I think I will need to build are:
- php (satis)
- node (npm)
- authentication (for users, token generation)
  - requires database for users
  - ldap connection for centrally managed users
- metadata (for packages)
  - requires database for package data
  - some package repositories might not like this, might need databases per repository type

## PHP (Satis)

What I found out about satis is that it generates the package data into files in the `include` folder when the generation
is being processed. But Composer doesn't seem to care what the file is called, as long as the hash matches.

It's clear that composer could cache files it already knows, so having a fixed hash is an optimisation we can do in the future, 
but right now, I'll generate any hash based on the time and serve any request composer gives me.

If there is no auth information, public packages are returned. Otherwise, packages by group based on the authenticated user
will be returned.

## Node (NPM)

There is an excellent project called Verdaccio. It appears to be built like a monolith. Although I hope that there are some
parts I can take out without having to build everything from scratch.
