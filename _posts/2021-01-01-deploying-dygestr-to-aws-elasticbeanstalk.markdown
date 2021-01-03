---
layout: post
title:  "Deploying Dygestr to ElasticBeanstalk on AWS"
date:   2021-01-01 10:03:36 +0530
categories: Blog
comments: true
---

Today I'm attempting to deploy the Dygestr app to [Amazon Web Services (AWS) ElasticBeanstalk](https://aws.amazon.com/elasticbeanstalk/) service.

I am following this tutorial :

<https://realpython.com/deploying-a-django-app-and-postgresql-to-aws-elastic-beanstalk/>

ran into a few issues, after deploying in the logs i could see the error :

```
ModuleNotFoundError: No module named 'application'
```

The fix was to create the file `.elasticbeanstalk/config.yml` with the following config :

```
option_settings:
  aws:elasticbeanstalk:container:python:
    WSGIPath: dygestr.wsgi:application
```


The dygestr application is now available at the following endpoint :

<https://www.dygestr.com/>

If the application gains any traction I will buy a short and friendly .com address.


