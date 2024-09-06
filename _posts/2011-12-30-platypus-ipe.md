---
title: Graphical interfaces (apps) for launching ipe7 and batch converting drawings from ipe6 to ipe7
layout: post
---
I propose here some small graphical interfaces created with Platypus for *[ipe](http://ipe7.sourceforge.net/ "The Ipe extensible drawing editor")*, the very nice graphics editor for Latex:

*   Launching ipe. **ipe7.app** can be launched to open pdf/eps/ipe files created with ipe7. It contains the necessary environment variables (pointing to the standard TeX pdflatex path under TexLive - `/usr/texbin/pdflatex`) to allow the compilation of Latex text snippets. You can also associate .ipe files with this app and directly open them from finder. You can also right-click on an ipe7 pdf/eps file and « open with » this app. 
*   Batch converting ipe6 files. **`ipe6to7-BatchConvert.app`** will open a small dropping windows on which you can … drop pdf/eps files created by ipe6. For each dropped file, it will save in the same folder as the dropped files two files with the same name as the dropped file (lets assume, **`filename.pdf`**), but different extensions: **`filename.xml`** is the extracted file,you do not really need it and delete it if you desire; **`filename.ipe`** is the one you want. You can open it in ipe (using ipe7.app, for example ;-) ).
*   Converting and opening a single ipe6 file. **`ipe6to7-ConvertOpen.app`** will also open a dropping window where you will be able to drop a single ipe6 file (pdf or eps). The app will create the corresponding .xml and `.ipe` files in the same folder as the original file, and directly open the `.ipe` file in ipe7 for editing.

**You can download these small apps from [my web site](http://yildizoglu.info/files/ipe7-tools.zip )**. You will get a small zip archive that you can uncompress in any folder and copy in your Applications folder (but you do not need to, you can launch them from anywhere). I have tried to design them relatively generic, but ave not tried on another Mac. I have at least one small operation that is specific to my configuration, but it should not be blocking for you. Let me know if you meet any problems with these tools.

**Note:** These tools assume that you have installed on your Mac OSX:

*   ipe7 and ipe-tools using MacPorts (please see below my post on this installation process);
*   TexLive (a recent version, I use 2011).
