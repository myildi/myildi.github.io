---
title: Using Markdown in a lightweight LaTex editing setup with iPad, iCloud and OSX
layout: post
---
I have been looking at ways to edit LaTeX files on the iPad. There are already interesting LateX editors, but I find them quite heavy to use yet, and LateX files are not very nice to decode on the small screen. 

[Markdown](http://daringfireball.net/projects/markdown/) is a much simpler and readable tagging language invented by John Gruber (aka Daring Fireball). I have been tempted to play with it several times in the past, without really getting there. My preferred Latex editor is [Lyx](http://www.lyx.org) now, but we are really not ready to get an iPad version of this lovely editor. So Markdown has seemed an interesting possibility to explore for writing Latex in a nice editor as [iAWriter](http://www.iawriter.com/). Since  [MultimarkDown](http://fletcherpenney.net/multimarkdown/) offers quite efficient translation of Markdown to Latex (including the equations and figures), as week as other formats like HTML and OPML (useful for importing in [Freemind](http://freemind.sourceforge.net/)).

Here is my automatic setup for this workflow:

1.  synchronizing iAWriter documents between the iPad and my laptop sung iCloud;
2.  copying the file from the iAWriter's iCloud folder to a Dropbox folder each time it has been updated (with [Hazel]);
3.  converting the .md file in the Dropbox folder to Latex, HTML, and OPML using Multimarkdown in Hazel, as soon as a new version is copied there;
4. Convert the Latex to pdf by running pdflatex+bibtex+pdflatex twice).

For the third step, I had to adapt the Multimarkdown latex support files to create a standard *article* export, instead of the *memoir* one used by default.

Now I can edit my documents on the iPad or on the MacBook using iAWriter and they get automatically synched and converted. If my MacBook is on, I can even get back the compiled PDF back on the iPad, using a Dropbox access (through GoodReader, for example).

Another post gives more details on this process and on how I configured [Hazel](https://www.noodlesoft.com/)