# Pythonjobs submission repo [![Build Status](https://travis-ci.org/pythonjobs/jobs.svg)](https://travis-ci.org/pythonjobs/jobs)

Welcome to the pythonjobs submission repository.  This board has been set up as a community resource to help companies recruit, and candidates find jobs.  There are no charges or fees for posting, and submitting a job advert is simple, and easy to do.

We will accept any job postings provided they contain full relevant information. This means that all adverts must display the details of the company that candidates will end up working for. Recruitment agencies may submit adverts to this board as long as they do not obscure details of the roles. Also, the maintainers of this repository offer no support with git/Markdown/YAML/pull requests etc. We will only accept and merge pull requests as described below and reserve the discretion not to accept postings deemed not to meet our quality guidelines.

## Submitting an advert

This jobs board is generated automatically from this git repository, and hosted using github pages.

All adverts are held as markdown files, with an added header, under the jobs/ directory.  Jobs files should look something like this:

```
---
title: <Job Advert Title (required)>
company: <Your Company (required)>
url: http://<Link to your site/a job spec (optional)>
location: <where is the job based? e.g. London,England>
contract: permanent (or contract/temporary/part-time ..)
contact:
    name: <Your name (required)>
    email: <Email address applicants should submit to (required)>
    phone: <Phone number (optional)
    ...: ...
created: !!timestamp '2015-02-20' <- The date the job was submitted
tags:
  - london
  - england
  - python
  - sql
  - django
  - <add as many tags as you want!>
---

Full job description here, in Markdown format
```

The easiest way to add the job is to (create a new file in our repo)[https://github.com/pythonjobs/jobs/new/master/jobs], and simply paste in the text of your job ad.

When you've finished edting you can make a pull-request directly from the web form.

When each pull request is submitted, it gets validated, and then manually reviewed, before being added to the site. If the validation fails you will get a message via GitHub. You can edit the file again, and resubmit.

# Frequently Asked Questions

### How do I see the job board?

Go here: [The Free Python Job Board](http://pythonjobs.github.io/)

### I'm in ${Country}, can I use this site?

Yes, this is an international job board.

### Why all this GitHub stuff? Can you add a form to submit jobs instead?

You dont need to know how to use Git to use Github - you can easily submit a new job (directly from the web-editor)[https://github.com/pythonjobs/jobs/new/master/jobs].

Git is a system designed by programmers for programmers - they are primary audience for this site.

### How does this site make money?

It doesn't. This is intended to be an free forever service to Python developers and the companies that wisely employ them.

We don't want to make any money out of this site.  We do want to help people find great jobs and help companies find great people to work for them.

### Why are you doing this?

We want to make the world a better place for the whole Python development community.

### How can you make this site free when others charge?

This site is run like an open-source software project. 

We use the same features from GitHub that many software projects use to manage the code and content of our site. We use Travis to build the pages and we host the site on GitHub - all of which is totally free.

In other words - by taking the very best free software technology we've created a the very best job board for people who love free software.

### How does this site work?

It's a static web-site. Any time a GitHub pull request is merged it will automatically recompile and update our pages on github.io.

You can see the [status of the latest build on Travis](https://travis-ci.org/pythonjobs/jobs).

### I'm an (agent|headhunter|recruitment consultant|IT Consultancy), can I still use this site?

Yes, but you must include the name of your client - where the candidate will ultimately be working. If you don't include this information your job advert may be rejected or deleted.

### There's an error or some other problem with one of the job adverts, what should I do?

Edit the page and make a pull request directly from GitHub.

If you don't know how to do this please raise an issue via the GitHub issue tracker: https://github.com/pythonjobs/jobs/issues

### I want to use the source code to make a rival job board, is that OK?

Our content and code are freely available. Take it if you want, but we'd much rather you help make this project better.

### Can I see some stats for your site?

Sure, here: http://www.seethestats.com/site/pythonjobs.github.io

### Can I run the site locally to preview my submission?

The easiest way to preview your submission is to build the site locally. You can use almost the exact same process we use to build the site on your own PC:

1. Install hyde - hyde.github.io <code>pip install hyde</code>
2. Install fin - <code>pip install fin</code>
3. clone/checkout the https://github.com/pythonjobs/template repository
4. Within this clone, put your new file in <code>hyde/content/jobs/[job_filename].html
5. Delete the contents of the <code>deploy</code> directory.
6. from within <code>hyde/</code>, run <code>hyde serve</code>
7. Open a web browser, and navigate to http://localhost:8080/
