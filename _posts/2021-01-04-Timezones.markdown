---
layout: post
title:  "Updates to User Timezones"
date:   2021-01-02 10:03:36 +0530
categories: Blog
comments: true
---

Did some more development work for the Dygestr app today, turns out trying to cater to varying user timezones is alot more difficult than one would imagine.

This video explains in detail the issues with user timezones in software development :

{% include youtube.html id="-5wpm-gesOY" %}

Updates to date and time I have made today for the Dygestr app include installing the [django-datetime-utc](https://pypi.org/project/django-datetime-utc/) module

```
pip install django-datetime-utc
```

Setting entries as they are entered into the database as UTC timestamps :

```
DateTime = DateTimeUTCField(auto_now_add=True)
```

Then when displaying the Entries on the diary page converting the UTC timestamp to the users local timezone :

```
{% raw %}
{% load tz %}
{% localtime on %}
    {{ entry.DateTime }}
{% endlocaltime %}
{% endraw %}
```

And for the dashboard taking the timezone set in the user profile and updating the datetime stamps in the dataframe before doing the grouping and dashboard generation :

```
my_timezone = "UTC"

if profile_timezone:
    my_timezone = pytz.timezone(profile_timezone)

df['DateTime'] = df['DateTime'].dt.tz_convert(my_timezone)
```

Hopefully that will display the correct time on the entries and dashboards for the users. I might have to get some people to report back as to whether the time is displaying correctly for them.

I would also like to ask for the timezone during the user registration process instead of them having to remember to do it in the user profile after, but I'll save that for another day.

