---
layout: post
title: Reviving my old blog using GitHub Pages
---
I moved [my old blog](https://yildizoglu.blogspot.fr) from _Blogger_ to **[Scriptogr.am](http://scriptogr.am/)** some years ago.

In the meantime, I have started to hear about **[Jekyll](https://jekyllrb.com/)**, and the idea looked seductive to me, but I was unsure if setting it up would be easy enough. I had some time to play with it, and it installed without any problem on my Mac. It was also easy to convert older posts in Markdown to a Yaml format compatible with Jekyll. 

Now that GitHub Pages includes Jekyll as an action, my process is even more straightforward: I write my posts in Markdown, commit them to Git, and push them to GitHub. They are magically converted to HTML pages on [my GitHub pages](https://myildi.github.io).

So, the new process is simple:
1. [GitHub](https://pages.github.com) indicates how you create a new repository dedicated to your blog and how to clone it.
2. Once you have the clone on your website, you can customize its various aspects by adapting CSS stylesheets and setting options for Jekyll following the instructions on the [Jekyll documents web page](https://jekyllrb.com/docs/).
3. You write your articles in Markdown or HTML format in the _posts subfolder of your repository folder. Their title must have the following format: year-month-day-title.md.
4. You commit your changes to your Git repository and push the corresponding branch to GitHub.
5. GitHub actions run Jekyll and convert your blog, and you can read it at https://xxx.github.**io** where xxx is your GitHub handle.
6. Voilà!

I have reproduced the posts from my old blog here. Some of these tricks became obsolete but can give ideas to explore when facing strange glitches. Others continue to be relevant and may be used even today, at worst, with marginal adaptation if the corresponding software developed some backward incompatibilities.