---
layout:     post
title:      My very first Android App
date:       2015-06-03 11:21:29
summary:    
categories: android
---

I just published my first app to the Google Play store. <a href="https://play.google.com/store/apps/details?id=com.rahobbs.funfacts">Fun Facts</a>  displays a random fact on a random background color with each tap. OK, so I followed along with a <a href="https://teamtreehouse.com/tracks/android-development">Treehouse</a> video tutorial and neither the app nor its construction were things I came up with on my own, but it is really satisfying to get something finished and published. I did make some improvements on top of what Treehouse did. Tutorials only get you so far, and tinkering seems to be the best way to really learn this stuff.

<a class="anchor" href="#Issue1">Issue 1</a>: Rotating the device caused the app to reload.

To  resolve this, I added the following to the \<activity\> section AndroidManifest.xml:

<pre><code class="xml">
android:configChanges = "orientation|screenSize"</code></pre>

By default, when the screen size or orientation change, the activity is restarted. This tells the activity to handle these configuration changes and remain running while the onConfigurationChange() method is called

<a class="anchor" href="#Issue2">Issue 2</a>: Some colors in the design spec didn't provide much contrast against the white text. I eliminated a light gray background option and changed the pink to something higher contrast for better readability.

<a class="anchor" href="#Issue3">Issue 3</a>: The "Show another fun fact" button didn't give any visual indication of being tapped. I added this functionality by creating an XML file describing how the button should look when it is pressed and unpressed. I pointed the Button view in my layout XML to that file for the background property.

There are a few other things I'd like to do to improve Fun Facts, like making sure a given color or fact doesn't repeat.

