# Pythonjobs submission repo [![Build Status](https://travis-ci.org/pythonjobs/jobs.svg)](https://travis-ci.org/pythonjobs/jobs)
 
Welcome to the pythonjobs submission repository.  This board has been set up as a community resource to help companies recruit, and candidates find jobs.  There are no charges or fees for posting, and submitting a job advert is simple, and easy to do.

At this time we are only inviting companies looking to hire for their own staff to submit jobs.  This means that all adverts must display the contact details of someone in the company that candidates will end up working for.  Recruitment agencies may not submit adverts to this board.

## Submitting an advert

This jobs board is generated automatically from this git repository, and hosted using github pages.

All adverts are held as markdown files, with an added header, under the jobs/ directory.  Jobs files should look something like this:

```
---
title: <Job Advert Title (required)>
company: <Your Company (required)>
url: <Link to your site/a job spec (optional)>
location: <where is the job based? >
contract: permanent (or contract/temporary/part-time ..)
contact:
    name: <Your name (required)>
    email: <Email address applicants should submit to (required)>
    phone: <Phone number (optional)
    ...: ...
created: !!timestamp '2015-02-20' <- The date the job was submitted
tags:
  - london
  - python
  - sql
---

Full job description here, in Markdown format
```

To add your job, submit a pull request to this repo, that adds a single file to the jobs/ directory.  This file should match the example above.

When each pull request is submitted, it gets validated, and then manually reviewed, before being added to the site. If the pull request fails the validation testing (Travis) then you _must_ fix this before the pull request can proceed.

# Previewing your submission

To preview your submission before creating a Review-request, there are a number of steps to follow:

1. Install hyde - hyde.github.io <code>pip install hyde</code>
2. Install fin - <code>pip install fin</code>
3. clone/checkout the https://github.com/pythonjobs/template repository
4. Within this clone, put your new file in <code>hyde/content/jobs/[job_filename].html
5. from within <code>hyde/</code>, run <code>hyde serve</code>
6. Open a web browser, and navigate to http://localhost:8080/
