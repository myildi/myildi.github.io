---
title: Using Markdown in a lightweight Latex editing setup with iPad, iCloud and OSX
layout: post
---
I have been looking at the ways of editing LateX files on the iPad. There are already interesting LateX editor ([TexTouch], [TexWriter]  etc.), but I find them quite heavy to use yet, and Latex files are not very nice to decode on the small screen. 

[TexTouch]: http://www.vancapy.com/textouch/ "TexTouch - vancapy"
[TexWriter]: https://itunes.apple.com/us/app/tex-writer-latex-editor-compiler/id552717222?mt=8 "TeX Writer - LaTeX Editor and Compiler for iPhone 3GS, iPhone 4 …"


[Markdown] is a much simpler and readable tagging language invented by John Gruber (aka Daring Fireball). I have been tempted to play with it several times in the past, without really getting there. My preferred Latex editor is [Lyx] now, but we are really not ready to get an iPad version of this very nice editor. So Markdown has seemed as an interesting possibility to explore for writing Latex in a nice editor as [iAWriter]. Since  [MultimarkDown] offers quite efficient translation of Markdown to Latex (including the equations and figures), as week as other formats like HTML and OPML (useful for importing in [Freemind]).


[Markdown]: http://daringfireball.net/projects/markdown/
[Lyx]: http://www.lyx.org
[iAWriter]: http://www.iawriter.com/ "iA Writer"
[Freemind]: http://freemind.sourceforge.net/ "Main Page -   FreeMind"
[MultimarkDown]: http://fletcherpenney.net/multimarkdown/ "MultiMarkdown"

Here is my automatic setup for this workflow

1.  synchronizing iAWriter documents between the iPad and my laptop sung iCloud;
2.  copying the file from the iCloud folder (~/Library/Mobile Documents/74ZAFF46HB~jp~informationarchitects~Writer/Documents) to a Dropbox folder each time it has been updated (with [Hazel]);
3.  converting the .md file in the Dropbox folder to Latex, HTML and OPML using Multimarkdown in Hazel, a soon as a new version if copied there;
4. converting the Latex to pdf using by running pdflatex+bibtex+pdflatex twice).

For the third step, I had to adapt the Multimarkdown latex support files to create a standard *article* export, instead of the *memoir* one used by default.

Now I can edit my documents on the iPad or on the MacBook using iAWriter and they get automatically synched and converted. If my MacBook is on, I can even get back the compiled PDF back on the iPad, using a Dropbox access (through GoodReader, for example).

I can give more details for this process if you ask for it in the comments.


[Hazel]: http://www.noodlesoft.com/hazel.php "Noodlesoft | Hazel"