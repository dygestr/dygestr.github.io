---
layout: post
title:  "Dygestr application is live!"
date:   2021-01-02 10:03:36 +0530
categories: Blog
comments: true
---

I spent the day today deploying Dygestr app to an AWS EC2 instance, had to do a fair bit of troubleshooting to get nginx, gunicorn and django playing nice together, specifically to do with getting it to serve static files properly but I got it working and it's currently live at :

<http://ec2-54-252-45-172.ap-southeast-2.compute.amazonaws.com/>

Going to shake it down a bit and test out the url from mobile phone to see how the experience is.

Will have to make sure the CSS looks good for desktop and mobile users.

Currently in the Dygestr app you can track Stool, Food, Medication, Weight, Exercise :

![](/assets/img/dygestr-screenshot-001.png)

Once you've entered in your entries you can check out the Dashboard tab, this will give you a daily dashboard of number of bowel movements grouped by bristol stool type. 

Also what medications you have taken each day.

![](/assets/img/dygestr-screenshot-002.png)

I have added a feature in the user profile section you can add in any foods you believe are triggers for you, I have added in Coffee :

![](/assets/img/dygestr-screenshot-003.png)

now when I add a trigger food into my diary the entry will display red with a bell in the top corner :

![](/assets/img/dygestr-screenshot-004.png)

I plan on working on the Dashboard page to show a seperate chart for when you consume trigger foods to help correlate with any change in bowel movements.



