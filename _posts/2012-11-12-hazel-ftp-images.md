---
title: Combining Hazel and FTP to easily include images in my blog
layout: post
---
Another problem that the combination of Hazel and FTP has allowed to solve is the easy inclusion of images in my blog.

I have created on my hard disk a specific folder where I save these images. This folder is inspected by Hazel and when a new file is saved, Hazel renames the file using the current date (the same as the blog post's date) and upload the file in a specific public folder of my web server. In the same time a complete URL is introduced at the bottom of a log file that I keep in my Documents folder. I can now open this text file (or keep it open while I am writing my blog post), and easily copy the URLs for the figures I insert in the post.

!["Locating the new files"][fig1]

[fig1]: http://yildizoglu.x10.mx/images-blog/blog-2012-11-12-8.png 

The second step is the renaming of the files. I have chosen to differentiate their names using the current date (makes easy to attach them to the corresponding blog post), and an automatically increased counter, so they do not get deleted by the successive files):

!["Renaming the new files"][fig2]

[fig2]: http://yildizoglu.x10.mx/images-blog/blog-2012-11-12-9.png 

No the files can be uploaded using a Bash script similar to the one shown in my previous post. Consequently, I only show the part which is new to this script:

!["Uploading the new files"][fig3]

[fig3]: http://yildizoglu.x10.mx/images-blog/blog-2012-11-12-11.png

Now, when I save/copy a new image file in `~/Documents/images-blog/`, I can easily include a link to this image in this blog. The images used in this article has been formatted using this system.
