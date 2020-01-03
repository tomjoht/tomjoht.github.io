---
title: How to transfer a WordPress site hosted on Bluehost to Jekyll on Github Pages
permalink: //
search_group: 
keywords: 
audience: 
last_updated: 
description: 
published: false
---
{% include linkrefs.html %} 

Download all your posts, pages, and images

http://import.jekyllrb.com/docs/wordpressdotcom/

ruby -rubygems -e 'require "jekyll-import";
    JekyllImport::Importers::WordpressDotCom.run({
      "source" => "wordpress.xml",
      "no_fetch_images" => false,
      "assets_folder" => "assets"
    })'
    
_assets contains your images
your posts have meta information
if you have other stuff you've uploaded, such as demos or audio files etc., they won't be accessible.

## Create Github repo
create a new github repo. you want to create a User Page style repo, not a project repo. 

create it in the master branch.

name it after your github account name, so if your github name was tomjoht, then you name this github repo tomjoht.github.io

put an index file there with some content, and go to tomjoht.github.io to confirm that it's working.

now add your jekyll site. 

do the gemfile thing with the github pages gem

add a CNAME with your domain

in your _config.yml file, put for your URL this:

tomjoht.github.io