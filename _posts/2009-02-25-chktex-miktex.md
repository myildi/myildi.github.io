---
title: ChkTex with LyX and Miktex 2.7 under Windows XP
layout: post
---
ChkTeX is a LaTeX utility for... checking your Latex syntax. 

It is maintained by [Baruch Even][1].  
[LyX][2] can use [ChkTex][1] utility. But [Miktex][3] does not come with this utility.
I propose here a way to activate this functionality using the chktex binary that is distributed in the [TeXLive][4] LaTeX system. This is quite simple indeed.

I assume that you have installed Miktex in the `"C:\MiKTeX x.x"` folder (replace `x.x` with the version of your Miktex).

First download the [chkTexFiles.zip][5] archive from my web server. It contains the necessary files for the installation of chktex under Miktex.  
This archive contains the following files:  


*   .chktexrc
*   ChkTeX.exe
*   tl90geturl.dll
*   tl90gnu.dll
*   tl90kpse.dll 

The first file (.chktexrc) is the chktex configuration file. You must put it under in the following folder:

 `"C:\MiKTeX x.x\tex\chktex"`  
 
The other four files are the executable for chktex and the necessary libraries. You must put them in the folder `"C:\MiKTeX x.x\miktex\bin"`.
You must now tell LyX how to find these files.

You activate "Tools/Preferences" menu item in LyX, and in the Output/Latex item in the left menu, you must give the following command for ChkTex:  

`ChkTeX.exe -l "C:\MiKTeX x.x\tex\chktex\.chktexrc" -n1 -n3 -n6 -n9 -n22 -n25 -n30 -n38`   

I must admit that I have not dug all the options for ChkTeX, you can probably finetune them using the [ChkTeX documentation][1] but these default options work on my installation. If you execute `chktex -h` in a Dos box, you will get an output that will indicate the role of different options.

Once you save the configuration (do not forget to click on the Save button in the preferences box ;-) ), you can execute `"Tools/Check Tex"` menu item and it will indicate the potential problems with your LaTeX file. Don't be afraid by the results! :-)

ChkTeX source files are also available from [CTAN][6].

 [1]: http://baruch.ev-en.org/proj/chktex/
 [2]: http://www.lyx.org/
 [3]: http://www.miktex.org/
 [4]: http://www.tug.org/texlive/
 [5]: http://yildizoglu.info/files/ChktexFiles.zip
 [6]: http://www.ctan.org/tex-archive/support/chktex/  