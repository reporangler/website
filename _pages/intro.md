---
title: Introduction
author_staff_member: chris
layout: docs
permalink: /docs
weight: 1
---
This project was spawned because I thought it was ridiculous that we have so many pieces of sepatate technology. But 
nobody apparently thought it was a good idea to combine them together, at least then make it free. There are plenty 
of projects to handle each repository. But nothing does everything together.

{% include page-image.html url="https://source.unsplash.com/random/1500x1146" description="A random image" %}

I have some years of experience in writing docker containers. Even running a Kubernetes cluster for my own projects. 
I am going to reuse this experience in order to start building a set of containers which can work together but 
provide multiple repository support.

## Reusing existing projects

I plan to reuse existing projects to cover the majority of the good work that other people have done. But I am going 
to modularise it so that it can be used with not just the original project.

My plan for PHP/Composer, I would use Satis as the engine, strip out it's front end leaving only the php backend and 
then wrap it with a REST api so the new front-end could interact with it.

My plan for NPM, was to use the excellent Verdaccio project, separate it's engine which deals with the protocol and 
file system, then reuse the front-end interface but make it work with any repository through the use of adapters. 

{% include page-image.html url="https://source.unsplash.com/random/1500x1146" description="I think we need another random image" %}

Who wants to join me on this voyage of discovery!
