---

title: "Documenting the impossible"
description: "Using a CMS with permanent links as documentation backbone in enterprise software."
date: 2024-11-06
layout: post
image: '/images/bookdoc.jpg'
public: yes
tags: [Markdown, CMS, Patterns]

---
Photo by <a href="https://unsplash.com/@impatrickt?utm_content=creditCopyText&utm_medium=referral&utm_source=unsplash">Patrick Tomasso</a> on <a href="https://unsplash.com/photos/open-book-lot-Oaqk7qqNh_c?utm_content=creditCopyText&utm_medium=referral&utm_source=unsplash">Unsplash</a>
      

I have used the following approach many times in the development of highly specialised software to solve a problem that sooner or later always arises: How do you get the expert knowledge about a software into the software if the technical experts of a company actually never have time?

## This is the context

Software is being developed that maps very complex use cases. The software is to be used on a broad basis within the company for customer projects. The technical experts for the software are rare, i.e. the software is mostly used by _juniors_. 

> Documentation is redundant. The Usage is obvious
>
> <cite>- some domain expert</cite>


## And here is the problem

The requirements for complex enterprise applications at my customers are usually written by (a few) technical experts. These then also serve as the main point of contact during development. 

However, as soon as the software is put into operation, the technical experts return to their projects and no longer have time to devote to the documentation. Then again during the development phase, very few experts are able to provide sufficient documentation on their knowledge. A lot of things only come to mind during use.

Similarly, the poor rookie, who is now supposed to use the software in the project, is overwhelmed by the variety of possibilities. He is quickly at his wit's end and has to annoy the guru, who is already under water. The documentation is (as is often the case) inadequate or not up to date.

**So the question is**: how do I ensure that the expert knowledge really ends up in the software documentation? And how do I make it possible that the documentation can still be adapted after release?

## My solution

Software documentation is outsourced to a content management system (CMS) that provides permanent links for each page. A link to a specific page in the CMS is displayed at every point in the software where documentation is required. It is important to note that the CMS is based on [Markdown](https://en.wikipedia.org/wiki/Markdown). This allows anyone to easily create formatted documentation including images, tables and videos.

The software is operated in two modes:

1. when clicking on the link, only the help text pops up (default mode)

<img src="/images/phelp.png" loading="lazy" alt="Default Modus"/>

2. clicking on the link opens the corresponding page in the CMS in edit mode. This is the _expert mode_

<img src="/images/pedit.png" loading="lazy" alt="Expert Modus"/>

This achieves the following:

* The software can continue to be documented _after_ the release date. This means that a technical expert can simply add and change knowledge. It is not necessary to have completed the documentation at the time of release (which usually does not work). The subject matter expert only needs to have access to the software.
* Because the documentation is not written in Microsoft Word or similar tools, but _directly_ in the CMS, the time-consuming intermediate step of preparing the documentation in a suitable form is no longer necessary. This saves time (and nerves).
* You enable the user to document his/her findings themselves - i.e. **they own their documentation**. This is in my opinion far better than providing the documentation of the software yourself (after checking it with the customer).
* [Markdown](https://en.wikipedia.org/wiki/Markdown) as a markup language makes it easy to create attractive documentation without any effort. Links, videos etc. can be easily integrated.

A very capable content management system is for example [ghost](https://ghost.org). It can be easily deployed using [Docker](https://www.docker.com) alongside the actual application.