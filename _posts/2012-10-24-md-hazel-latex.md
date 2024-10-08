---
title: Using Hazel for the automatization of the conversion, Markdown, XeLatex,  PDF
layout: post
---
As I have explained in my last posts, I am trying to craft a writing chain that would allow me to write in Markdown and easily convert this readable text to Latex and PDF. I can even download the final PDF file on my iPad using a Dropbox folder.

[Hazel](http://www.noodlesoft.com/hazel.php) is a very nice automatization system that I was planning to explore more in details, and it indeed solves a lot of problems in this case.


My chain works as the following (this completes my previous message):

1. I write my text in IAWrite (under OSX or iOS), and it gets saved in iCloud (suppose that the file is called *mytext.md*).
2. On the desktop, these files appear in the mobile documents folder (~/Library/Mobile Documents/74ZAFF46HB~jp~informationarchitects~Writer/Documents). I use a first Hazel script (see *Figure 1*) attached to this folder for copying this file to a Dropbox folder as soon as a new version is saved.  
![Figure 1](https://myildi.github.io/images/blog-md-hazel-1.png)  
**Figure 1:** Copying the .md files to a Dropbox folder  
3. When the .md file is copied, other Hazel scripts attached to the destination Dropbox folder start to play. 
4. One script converts the file to .html and .opml formats. This script calls **[multimarkdown](http://fletcherpenney.net/multimarkdown/ "MultiMarkdown")** for converting the copied markdown file to these formats (see *Figures 2-3*).  
![Figure 2](/images/blog-md-html-1.png)  
**Figure 2:** Convert the md file to HTML and OPML  
![Figure 3](/images/blog-md-html-2.png)  
**Figure 3:** Convert the md file to HTML and OPML, the bash script  

5. Another script (see Figures *4-5*) converts the file to Latex format (only if the md file contains the meta tags that are necessary for obtaining a complete Latex file at the end of the conversion -- otherwise Multimarkdown converts Latex snippets that cannot be compiled by Latex).  
![Figure 4](/images/blog-md-latex-1.png)  
**Figure 4:** Detecting the changed md file to be converted to Latex  
![Figure 5](/images/blog-md-latex-2.png)  
**Figure 5:** Converting the file to Latex
6. A last script (see *Figure 6*) converts the Latex file obtained in the previous step to PDF, using **[latexmake](http://xpt.sourceforge.net/tools/latexmake/ "LatexMake - makefile for Latex compiling")**. Latexmake is a Perl script that automatically runs the necessary operations for converting your tex file to PDF (the final format I have chosen here). Moreover, I have discovered that multimarkdown cannot convert accented characters in the meta tag fields correctly. So, I have problems if the title, for example, is in French. To correctly convert these Unitype characters, one needs to compile the document using **xelatex**, and not **pdflatex**. The full Bash script I use is given below (including some commented instructions that were useful for debugging it, and that could be useful in some other contexts).  
![Figure 6](/images/blog-md-xelatex.png) 
**Figure 6:** Converting the Latex file running latexmk and Xelatex

**Bash script for compiling with [Xetex](http://en.wikipedia.org/wiki/XeTeX "XeTeX - Wikipedia, the free encyclopedia"):**

    #!/bin/bash
    #Compiling latex files using latexmake in a bash script with xelatex
    #useful for automating the compilation using Hazel
    #Hazel passes the full path of the file in the variable $1
    #Extracting the post filename and the folder name
    filename="$(postname $1)"
    foldername="$(dirname $1)"
    #deleting the extension from the post name
    filename="${filename%%.*}"
    #Completing the PATH with tex programs
    PATH=$PATH:/usr/texbin/
    export PATH
    #useful for checking if the PATH has been updated
    #echo $PATH > env.txt
    cd "$foldername"
    #Useful for showing Growl notifications from a bash script
    #growlnotify must be installed using the installer in the growl.dmg (Logiciels telecharges)
    /usr/local/bin/growlnotify -s -a terminal -t "Running Latexmk" -m "on file: $filename.tex"
    /usr/local/bin/growlnotify -s -a terminal -t "Running Latexmk" -m "in folder: $foldername"
    
    #The main attraction: makes necessary compilations using xelatex (for Unitype characters)
    #Xelatex is necessary because multi markdown does not convert the text types in the meta tags
    # -f -g -silent assures a quick compilation even in presence of errors
    #For other options run "man latexmake" in Terminal
    /usr/texbin/latexmk -f -g -verbose -xelatex -silent $filename.tex
    /usr/local/bin/growlnotify -a terminal -t "Finished Latexmk"