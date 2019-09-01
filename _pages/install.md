---
title: Installation
author_staff_member: chris
layout: docs
permalink: /docs/install
weight: 2
---
I will come back to arrange this better for now. But there are the following services which are working

## PHP (Satis)

It's better for now that you read the github readme, but you generate a satis repository, code the file into the project 
and it'll serve composer with the packages. There is no 'storage' option yet, so it'll serve from your code 
repository. Thats a future planned feature

But right now it's 'working' and I expect a fully data-driven api to be ready quickly based on the time it's taken 
to build what I've got so far (1 day since I started the work on the api's)

[php-service](https://github.com/reporangler/php-service){:target="_blank"}

## Authentication

Right now it's serving faked users, but you can attempt to login and it'll reply back with what will be a live database 
of users that can be managed through the REST API. The PHP service is already using this to know what user has 
attempted to login.

The idea behind this service is that we can abstract away authentication from the repository. So NPM can use the same 
database as PHP Composer is using, or perhaps even abstract a second level to a LDAP server. 

[auth-service](https://github.com/reporangler/auth-service){:target="_blank"}

## Coming soon

Now that I can fake the user data, I want to quickly return the data for the php-service, which is why I'm providing 
only fake users for now. Also I'm researching what document store I can use rather than use mysql which is a little bit 
heavy for one or two database tables of users. I think I will go with a NoSQL database instead. But something lightweight.

## Contribute! 

Please, if you're interested in this project and have some good ideas, you're more than welcome to contribute by 
adding issues to the github and I'll try to evaluate them with you there!

{% include page-image.html url="https://source.unsplash.com/random/1500x1146" description="A nice image to make you feel better" %}

