---
title: Difficulty to use in your blog/website links to  images in your Dropbox
layout: post
---
When you generate a public link to an image file living in your Dropbox, it generates now a link to a viewing page. 

Even if that can be handy when you want to share your last vacation pictures with the rest of your family, this link is not compatible with including a direct link to these images in a blog post or in a web site, using a **`![]`** tag in markdown or  an **`IMG`** tag in html.

Fortunately, there is a solution to this problem (at least with the current functionning of Dropbox, and I hope that Dropbox will not completely block direct linking in the future): 

You should add **`?dl=1`** at the end of the image URL, without separating it with a space from the URL given by Dropbox. 

If the initial URL was, for example,  `https://photos4.dropbox.com/gjyhihdyd/image.png`

you must replace it with:

`https://photos4.dropbox.com/gjyhihdyd/image.png?dl=1`

That should give you an embeddeble image. 