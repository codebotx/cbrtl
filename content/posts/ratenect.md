---
author: "Ankur Khandelwal"
title: "Project: Ratenect"
date: "2021-06-04"
description: "Connecting Help and Transparency"
tags: ["project", "community"]
ShowBreadCrumbs: true 
---
> **NOTE**: This project is being maintained by [Ankur Khandelwal](https://github.com/Ankur-Khandelwal)

![logo](/assets/logo.png)

India has over [3.2 million](https://www.icnl.org/resources/civic-freedom-monitor/india#:~:text=The%20Central%20Statistical%20Institute%20of,certified%20NGOs%20on%20its%20portal.) registered [NGOs](https://en.wikipedia.org/wiki/Non-governmental_organization) (Non-Governmental Organisations) across its territory. The voluntary sector has always played an important role in supporting the government as a partner in nation-building and is heavily funded by the government as well as by private institutions. In 2018 only, companies contributed US$1 Billion to [CSR](https://www.india-briefing.com/news/corporate-social-responsibility-india-5511.html) initiatives, according to a survey. 

Considering the vast impact and significance of the sector, it becomes very important to tackle the challenges present here as well as to improve and increase its accessibility. 

We have noticed two major problems in this sector:
  - The credibility of NGOs is a major concern for fund donors especially Government and Corporate Institutions.
  - No easy way exists for the general public to find reliable local NGOs and volunteer for them.

With the vision to tackle both the problems together, we propose a solution called **Ratenect**.

Ratenect is a web/mobile platform with a two-way rating system. The workflow of Ratenect is depicted by the illustration below:

![Workflow](/assets/workflow.png)

## What will the interface look like?

For the start, we have to keep things simple and eventually we shall ramp up the platform. The simple web/mobile interface will be as:

- ### For NGOS:
  - Sign up and login pages.
  - An account page, where there will be overview volunteers applied, donations received through this platform, and the option to update their details.
  - An applications page, where they can see the details of the volunteers applied and can accept and reject the applications.
  - A donations page, where they can see details of donations.
  - A page to make public posts about their work for which they need volunteers to lend help. 
  - A feeds page where they can see other NGOs posts.

- ### For Volunteers:
  - Sign up and login pages.
  - An account page where there will be an overview of their own work, account details, updating details option.
  - A feed (landing page) where they can see the NGOs available nearby them, a search bar through which NGOs can be searched based on location entered.
  - When they can click on an NGO name, they can see the complete details of the NGO, its posts, location and click on the 'Apply' button to express their interest to volunteer.

An estimated interface design of the mobile application:

![prototype1](/assets/pp1.png)

![prototype2](/assets/pp2.png)

## Proposed Technical Implementation:
There shall be two platforms - Web and Mobile. For both the platforms we shall have the same backend for API and endpoints. The proposed tech stack is as follows:

### Web
  - **Frontend**: React
  - **Backend**: Node, Express 
  - **Database**: MongoDB
  - **Hosting**: AWS

### Mobile:
  - **Frontend**: Flutter
  - **Backend**: Same as above

### Link to the repositories:
- **Backend**:  https://github.com/cbrtl/ratenect-backend 
- **Frontend**: https://github.com/cbrtl/ratenect-frontend 
