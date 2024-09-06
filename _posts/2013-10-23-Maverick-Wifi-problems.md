---
title: OSX Maverick and Wifi disconnection problems
layout: post
---
If you are getting disconnected from your Wifi network after having upgraded to OSX Maverick, maybe you are having the same problem as me. 
Indeed, after having upgraded my laptop to Maverick, it started to cycle between connection and disconnection to my Wifi router. 
After having searched the internet, I have remembered that I have created a small script, some years ago, to automatically deactivating Wifi when I connect to the Ethernet cable the laptop, following this [nice and useful trick](http://hints.macworld.com/article.php?story=20100927161027611).

Well, if this is also your case, you should check if your laptop has the script  **/Library/Scripts/toggleAirport.sh **, and delete it if it is the case. 

**That definitely solved my problem without doing anything else**. 

You should also check that the configuration file /System/Library/LaunchAgents/com.mine.toggleairport.plist is also absent from your laptop, but it was the case for me.

