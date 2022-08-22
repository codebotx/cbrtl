# cbrtl site
This repo contains the source code for the cbrtl's website and blog.
As we grow, we expect more people to show up with interesting events and project ideas, or blog posts.


## Building the site.
To build and run the site, follow theses steps:
1. Clone the repo with `git clone https://github.com/cbrtl/cbrtl-site.git`.
2. Install the submodules using `git submodule init` and `git submodule update`.
3. Download Hugo, you don't need to know how to use it. The download instructions for hugo are available [here](https://gohugo.io/getting-started/quick-start/).
4. Make sure Hugo is added to your system variables in PATH.
5. Come back to root folder of this repo, and do run `hugo server -D`
6. The site is now live at `localhost:1313`

## Adding a blog post of your own.
Every member of cbrtl is free (and encouraged) to submit a blog post. The steps for doing so are pretty simple.
Before getting started, you should be familiar with markdown. If you're not, don't worry! Markdown is very simple and
you can learn it in minutes from [here](https://www.markdownguide.org/getting-started/).

- Fork the repo to your GitHub account.
- Clone and build the site by following the instructions given above.
- Make a new branch for your blog post, say `git branch new-post`.
- The content for all posts are present inside the `/content/posts/` directory.
- Create a markdown file in the posts directory with a sensible name, say `hello.md`.
- The first section of every post should be a slug like so:
```markdown
---
author: "your name"
title: "Title of your post"
date: "Date of writing"
description: "Short description."
tags: ["tag1", "tag2"]
ShowBreadCrumbs: true 
---
```

5. For the body of the post, it's very simple. Just use markdown and feel free to use existing posts for reference.
6. **IMPORTANT**: We mandate a simple style guideline, every new sentence (after a `.` or `?`) should start on a new line.
    But you can split a single sentence into multiple lines if needed.
7. While you're writing, keep an eye on the the locally running site to see how your page looks after every change 
   (use `hugo server -D` to launch the server).
8. Once you're done authoring the post, `add`, `commit` and `push`.
9. Open a pull request from your branch to `cbrtl:main` on GitHub.
10. Wait for a reviewer or editor to review your post, there may be a little back and forth here on spelling mistakes and such.
11. Once your PR gets merged, the changes will be published on our site!

## Sample Blog post

```markdown
---
author: "srijan_"
title: "How to write a blog"
date: "2021-04-31"
description: "So you want to write a blog..."
tags: ["guide", "community"]
ShowBreadCrumbs: true 
---

Hi, this is some sample text that will be rendered in the browser as HTML.

# This is a big heading
**This is some bold text**.
Remember! every new sentence on it's own line.
Somewhat like this.

## This is a smaller subheading
Some text...

```

**NOTE**: You can also write code in blog posts inside markdown code content (\`\`\`).

If you feel this wasn't enough or you still have questions, feel free to reach us on the Discord server,
or open an issue.
