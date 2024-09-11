---
title: Combining Hazel and FTP to include images in my blog easily
layout: post
---
Another problem that the combination of Hazel and FTP has allowed to solve is the easy inclusion of images in my blog.

I have created a specific folder on my hard disk where I can save these images. Hazel inspects this folder, and when a new file is saved, Hazel renames the file using the current date (the same as the blog post's date) and uploads the file in a specific public folder of my web server. At the same time, a complete URL is introduced at the bottom of a log file that I keep in my Documents folder. I can now open this text file (or keep it open while writing my blog post), and easily copy the URLs for the figures I insert in the post.

The second step is renaming the files. I have chosen to differentiate their names using the current date (which makes it easy to attach them to the corresponding blog post) and an automatically increased counter (so they do not get deleted by the successive files).

Now the files can be uploaded using a Bash script similar to the one shown in my previous post. 

Now, when I save/copy a new image file in `~/Documents/images-blog/`, I can easily include a link to it.
