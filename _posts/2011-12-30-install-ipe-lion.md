---
title: Installing ipe7 under OSX (Lion to Maverick)
layout: post
---
After having tried other solutions for my pdflatex graphics, I am reconsidering again [ipe]  (see my earlier post about this very nice and useful program that allows you to put latex instructions in your drawings). 

My initial wanderings were motivated by the unavailability of a reliable ipe version under Snow Leopard. I have been able to compile a 6pre28 version (see below), but it was nor as reliable as I desired and it became completely unusable as soon as I have switched to Lion (mainly because of the Qt framework version I have used to compile it). I have also played with versions available in MacPorts and this is the solution I will propose to you for installing ipe7 under Lion.

# Before starting: 

You will need to install XCode from the Mac AppStore and Commandline Tools for Xcode.

# Installing MacPorts

First of all, you must download and install MacPorts. It could look daunting at a first look, but the process is quite painless (if you already have MacPorts on your Mac, go to the step B below):

- You first download the dmg archive corresponding to your system (Lion for me) from the install page of [Macports];
- Double-click on the downloaded MacPorts-2.0.3-10.7-Lion.dmg file to mount it in Finder and open it in the finder (I assume that you know how to use a dmg file);
- Switch in Finder to the folder corresponding to the dmg volume and double-click on c to launch the installer. You follow the instructions (they are very straightforward). MacPorts installs itself, by default, in **/opt/local** folder on your system hard disk.
- Once the installation finishes, restart your Mac to be sure that everything (PATH and all will be correctly fixed).
- When your system is back, open a Terminal session and type: « **sudo port selfupdate** » to update the repository of your macport installation with the list of the most recent packages (you will have to type your administrative password for this).

# Installing ipe and and ipe-tools. 

You are now ready to install ipe :

- You can check the availability of ipe, by typing « **port search ipe** »;
- You will get the list of all packages that have « ipe » as a part of their name. The two packages that interest us are: **ipe** @7.0.14 (graphics) (The Ipe extensible drawing editor, the main program) and **ipe-tools** @20110916 (graphics) (Tools for the Ipe extensible drawing editor, utility tools for converting old ipe drawings to ipe7 - see below about this point).
- You install them by typing in the Terminal:
    sudo port install ipe

    sudo port install ipe-tools

- The installation process will download other all necessary MacPorts packages, and it will take some time depending on the sped of your internet connection and of your Mac. If ever the process stop, you just relaunch the installation instruction. MacPorts will in general give you tips for solving the problem, if you meet any (generally it just works, you must be patient, that’s all).
- You will have a bunch of command in the **/opt/local/bin** folder now, and the ones which interest us are:
    - **ipe** (the main program, ipe7);
    - **ipeextract** (the utility for extracting ipe instruction from ipe created PDF or EPS files -> ipeextract myfile.pdf gives myfile.xml as output);
    - **ipe6upgrade** (the utility for upgrading *ipe6* drawings to *ipe7* format -> ipe6upgrade myfile.xml gives myfile.ipe as output);
- These programs are supposed to be launched in the Terminal, but I have created solution for launching them from the Applications menu (using Platypus - see below; I will do another post on this point).

- MacPorts will also install a MacPorts menu in your Applications menu. There will even be an « ipe » item in this menu and it will launch the program. You will be able to draw with it, but, since it does not correctly import the environment variables, you will not be able to run Latex from it. Everything works better if you launch ipe from the command line (or if you use the utilities I have developed using Platypus).
- Now you have a working version of ipe7 on your Mac. Have fun!

# Update (2013-1-20): 
It seems that an OSX version of ipe 7.1.4 is directly available from the [SourceForge] page of ipe as a .dmg. Just copy ipe.app in the /Applications folder, and you are ready to go.


[ipe]: http://ipe7.sourceforge.net/
[Macports]: http://www.macports.org/install.php
[SourceForge]: http://sourceforge.net/projects/ipe7/
