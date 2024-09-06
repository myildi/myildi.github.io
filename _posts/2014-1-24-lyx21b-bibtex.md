---
layout: post
title: Do you meet problems to compile your Beamer presentations with LyX 2.1 (beta)? 
date: 2014-1-24
---
I have updated LyX to the beta 2 of the new version (2.1) that is in preparation. And now I get strange bibtex messages for my old beamer files...

This problem was really puzzling. I have updated, in LyX 2.1 beta 2, a course beamer prepared using the version 2.06 of LyX, and I was unable to compile it in PDF. 

The coming version of LyX will considerably reinforce the beamer support by reliably supporting many options for environments and frames. I really like the very nice work done by the LyX team (Kudos!!!). But, by correcting some old problems, this version has also made incompatible some go the tricks I was using in my Beamers for putting some features in them, even if they were not supported by LyX out of the box. I am progressively learning which ones must now be deleted in order to eliminate compilation problems.

Here one of them: I started to get strange bibtex messages for a beamer file where I have a bibliography (nothing fancy: *natbib + authordate3* style), Lyx converting the file to PDF in the Temporary folder, but giving me a lot of messages concerning references badly formatted in the AUX file. But the AUX file, nor the BBL file were visible in the TMP folder. That was definitely very puzzling because the PDF was sitting in the folder nevertheless and it included the references...

Moreover, I was perfectly able to manually run *pdflatex* and *bibtex* on the generated *tex* file, without any errors (but with warnings for multiply generated references) and, once the AUX and the BBL were manually generated, LyX was able to compile the document.

I have been able to solve this problem, but I continue to be very puzzled by the absence of the AUX and BBL files from the temp folder...

My problem was due to an option I was putting in the preamble of my Beamer files:

    \beamerdefaultoverlayspecification{<+->}

and even if I was putting all the citation commands in the same overlay, that option was generating multiple citations and multiple *\bibliography* commands.

Eliminating this preamble option, my bibliography frame became completely static again, and LyX stopped to cry about multiple bibliography style definitions (since beamer stopped to repeat the *\biblography* command in successive overlays). )in.