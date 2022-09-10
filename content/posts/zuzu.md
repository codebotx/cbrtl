---
author: "Anubhab Patnaik"
title: "Project: Zuzu"
date: "2022-06-27"
description: "Zuzu is a static site generator that converts all your markdown files into static htmls pages. It uses Github falvoured Markdown CSS and highlight js to beautify code snippets."
tags: ["project", "community"]
ShowBreadCrumbs: true 
---
# Zuzu
> Static Site Generator
### Zuzu is a minimal static site generator.


Zuzu converts all your markdown files into static htmls pages to be rendered quickly. It uses Github falvoured Markdown CSS and highlight js to beautify code snippets. [This blog](https://anubhavp.me/blog), for example, has been written using this generator. This enables noobs like me to write blogs without having to learn a lot of code! All you need to do is to write a markdown file and it will be rendered as a page ;) 

## How does it work ?

Zuzu parses the markdown file using *javascript* and renders it as *html documents*. It then saves the html files in the `public` folder. The public folder, with `index.html` file, is the final output of the generator and this can be deployed and hosted in various platforms. This particular blog has been deployed on [Github Pages](https://anubhavp.me/blog/).

### 1. Create a markdown file

    # This is a title
    This is a paragraph
    This is another paragraph
    This is a list:
    * Item 1
    * Item 2
    * Item 3
    This is a code block:
    ```
    print("Hello World")
    ```
    This is a table:
    | Column 1 | Column 2 | Column 3 |
    | -------- | -------- | -------- |
    | 1        | 2        | 3        |
    | 4        | 5        | 6        |
    | 7        | 8        | 9        |
    This is a link: [zuzu](https://anubhavp.me/blog/zuzu.html)

### 2. Run the generator and find your blog

Run `npm run generate` in the console. Zuzu is also available as a CLI tool. You can install it using `npm install -g zuzu`. Then run `npx zuzussg` in the console. This will generate the html files in the `public` folder. You can then deploy the `public` folder to any hosting platform.
You'll now see the blog in the public folder! Run the index.html file in your browser to see your blog. You may now deploy your site
to a server. Zuzu also supports CI/CD. You can use Github Actions to automatically deploy your site to Github Pages.

### You can find the working in the repo [here](https://github.com/codebotx/zuzu/)

#### To-do
* Add another template file in the initial folder with index.html and respective assets.
