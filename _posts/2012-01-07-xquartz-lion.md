---
title: Broken XQuartz applications under OSX Lion
layout: post
---
So, my new laptop runs OSX Lion. I have been able to migrate my data from the old laptop (but the automatic process provided by the Migration assistant was a failure, Apple support had to help me to do it manually).

Many of the migrated applications have worked without a hitch as soon as the migration ended, but some other applications, like [gretl](http://gretl.sourceforge.net/ "gretl") - the GNU econometric software - and some wine-postd windows tools, have refused to start. 

I was quite annoyed by this, but have not had any time to take care of it until today. I have installed wine using MacPorts (instead of the [WineBottler](http://winebottler.kronenberg.org/ "WineBottler - Run Windows Programs directly on OS X") that I normally use), the problem persisted. I have discovered [Play it on mac](http://www.playonmac.com/ "Home - PlayOnMac - Run your Windows applications on Mac easily!") implementation of Wine and installed it, but the installation stalled during the creation of the virtual disk needed by this soft. 

  
Now, the support page of PION tells that you should start XQuartz to complete the installation process if you get stalled the first time. And I have tried to do launch it (it lives in `/Applications/Utilities`), but it crashed by telling that the version I am trying to launch is maybe not compatible with my OS. Actually, that was an important clue. I have directly jumped on the [XQuartz website][1] and seen that there was a new version waiting for me. I have installed it and **BINGO!** All my Wine and X11 softs are working again.

So, if you have difficulties to launch Wine-postd or XWindows softs after having upgraded to Lion (or on your new Mac under Lion), you should download and install the most recent version of XQuartz, from their [web site][1].

 [1]: http://xquartz.macosforge.org/trac/wiki/Releases  