---
title: Switching to Mac OSX
layout: post
---
I am starting to migrate to Mac OSX my working environment. I am an old Linux user for my servers but I have never been completely convinced by the Desktops for Linux (mainly KDE and Gnome) and gone back to Windows with the introduction of its first usable version (XP). I have deliberately missed the Vista wagon, and have not been impressed by Windows 7. Being tired by the quirks of XP, I wanted to adopt a more reliable and modern interface. OSX seems to me to comply with this demand, and the Unix that is behind the interface is quite a standard one, quite easy to understand for a person used to Linux. I am a happy camper concerning the very well thought interface of OSX.

Migrating my working environment to OSX has not been completely simple. Before the switch, I have, of course, checked that this migration is broadly possible. Here I indicate what was very simple, what was more bumpy, and the points for which I have not yet found a completely satisfactory solution.

## Immediate transition for:  


*   Internet tools, starting with Firefox (I really need it for [Zotero][1] and other tools that do not exist under Safari or Chrome);
*   Latex compilation, just install TexLive, it is perfect.
*   For many aspects of Tex on OSX, check the [wiki][2]  
    
*   Simple Latex editors: [TexMaker][3] is a very nice multi-platform editor. [Aquamacs][4] (Xemacs with an Aqua interface) comes standard with AUCTex, which a very powerful Tex editing and compiling tool.
*   Graphical Latex editors: I was using [Lyx][5] under Windows, there is an OSX version.
*   [Mendeley Desktop][6] (very nice, bibtex compatible library manager) has an OSX version.  
    
*   Statistical tools: [R-project][7] offers an OSX version, perfect for me; it was my main tool under Windows. I am using [Aquamacs][4] also for R, since it comes with ESS (Emacs speaks statistics), which is also very powerful. [Gretl][8] (econometrics) works under OSX.  
    
*   Java programming: Eclipse works under OSX.
*   [NetLogo][9] works under OSX.  
    
*   Bitmap graphics: Gimp also offers an OSX version.
*   Vectorial graphics: [JPicEDT][10] is written in Java, so you can use it also under OSX, without any problem
*   MS Office: I am using Office 2008.
*   Picasa has an OSX version (I prefer it to iPhoto, probably because I am too lazy to replace an old software that satisfies me).
*   Skype has on OSX version.
*   Evernote works nicely with OSX.
*   Freemind mind map software also works under OSX (Java).
*   [Zipeg][11] is a nice and free zip archive manager.  
    

## Problems begin:  

*   One difficult point has been to find a nice substitute to [PowerPro][12] (this very nifty and talented swiss-army knife utility for managing many aspects of windows and automatizing many tasks). [Butler][13] is able to replace some of them. I am learning AppleScript for some other aspects. Don't call this an easy transition ;-)
*   Lyx has problems to import some big Latex files I have written with Scientific Word, so I continue to use the latter under a Parallel's virtual machine :-( I would really have an OSX version of SWP, even if I love Lyx...
*   Unfortunately Entourage in Office 2008 is not compatible with Outlook (such a stupid strategy!); I am waiting Office 2010 that will reintroduce Outlook. I like quite well Apple-Mail but my several years old mail archive is under Outlook format and I do not want to loose mails during the conversion process...
*   Making [Inkscape][14] %2B [TexText][15] work under OSX has been a pain. I do not even remember how I have been able to do it (I have followed and mixed several forum post on this topic).  
    
*   [Ipe][16] graphics editor for Latex does not propose an OSX version out of the box. It seems possible to compile it for OSX, but I have not had yet the time to do it (it seems a little bit painful).
*   [Xara X][17] drawing software for vector graphics. I am really missing this one. I had to install it in the virtual machine.

## Nice surprises:  

*   Bibliography management for bibtex: I like [Jabref][18] (it is multi-platform), but [Bibdesk][19] is a very nice reference management tool.
*   Backup: Time machine is very nice and you have also nice imaging tools under OSX. You can use [TimeMachineEditor][20] to customize some of its aspects. [Backblaze][21] also works for OSX and I have been able to transfer my subscription to the new machine without any problem (be just ready to loose all your old Windows backups).
*   The Agenda of OSX is very nice and simply synchronizes with Google calendar.
*   [Bean][22] is a very nice and light Word file editor.
*   [Skim][23] is a very useful free Acrobat viewer (and editor). Preview in OSX also very useful (deleting pages, etc.). [FormulatePro][24] allows the filling of Acrobat forms.  
    
*   [MyMind][25] is a very nice idea editor.
*   [WineBottler][26] (free) is a very nice Wine version that allows the installation of some small Windows programs under OSX. I have tested CrossOverX, but have not really been convinced by its advantages.
*   OSX comes with many small and nice utilities (managing hard disk, writing DVDs, etc.).

## Conclusion

I am using my virtual machine only for Scientific Word (only for some files, all new files are written under LyX or Aquamacs), Ipe and Xara X. I am quite happy with the coherent working environment provided by OSX. I am not ready to switch back to Windows for some time... :-)

 [1]: http://www.zotero.org/
 [2]: http://mactex-wiki.tug.org/wiki/index.php?title=Main_Page
 [3]: http://www.xm1math.net/texmaker/
 [4]: http://aquamacs.org/
 [5]: http://www.lyx.org
 [6]: http://www.mendeley.com
 [7]: http://www.r-project.org
 [8]: http://gretl.sourceforge.net/osx.html
 [9]: http://ccl.northwestern.edu/netlogo/
 [10]: http://jpicedt.sourceforge.net
 [11]: http://www.zipeg.com
 [12]: http://powerpro.webeddie.com
 [13]: http://www.petermaurer.de/butler/
 [14]: http://www.inkscape.org
 [15]: http://pav.iki.fi/software/textext/
 [16]: http://tclab.kaist.ac.kr/ipe/
 [17]: http://www.xara.com
 [18]: http://jabref.sourceforge.net
 [19]: http://bibdesk.sourceforge.net
 [20]: http://timesoftware.free.fr/timemachineeditor/
 [21]: http://www.backblaze.com
 [22]: http://www.bean-osx.com
 [23]: http://skim-app.sourceforge.net
 [24]: http://code.google.com/p/formulatepro/
 [25]: http://www.sebastian-krauss.de/software/#mymind
 [26]: http://winebottler.kronenberg.org  