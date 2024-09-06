---
title: OSX Maverick and installing ipe with Macports
layout: post
---
If you are trying to install the Macports version of ipe, after having installed OSX Mavericks, there is a big chance that the build will fail. There is a solution already developed by MacPorts developers as a patch file downloadable from [this page](http://trac.macports.org/ticket/41049). You can directly download this file following [this link](http://trac.macports.org/attachment/ticket/41049/ipe-cstdlib.patch).

With this file in your downloads (normally ~/Downloads) folder, open a terminal window and go to the ipe sources folder in your Macports tree (normally located under /opt/local) that remained after the failed install (type this instruction without line breaks):

    cd /opt/local/var/macports/build/    
    _opt_local_var_macports_sources_rsync.macports.org_release_tarballs_ports_graphics_ipe/
    ipe/work/ ipe-7.1.4/src/

and execute there 

    patch -p0 < ~/Downloads/ipe-cstdlib.patch

(check your Downloads folder that this patch file is there, before executing these instructions).

If the patch has been successful (otherwise you get an error message normally), you can try to install again now the ipe port by executing in the Terminal:

    sudo port install ipe

and the installation should start after you give the root password.
