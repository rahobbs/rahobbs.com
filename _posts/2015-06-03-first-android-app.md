---
layout:     post
title:      My very first Android App
date:       2015-06-03 11:21:29
summary:    I just published my first app to the Google Play store.
categories: android
---

I just published my first app to the Google Play store. <a href="https://play.google.com/store/apps/details?id=com.rahobbs.funfacts">Fun Facts</a>  displays a random fact on a random background color with each tap. OK, so I followed along with a Treehouse video tutorial and neither the app nor its construction were things I came up with on my own, but it is really satisfying to get something finished and published. I did make some improvements on top of what Treehouse did. Tutorials only get you so far, and tinkering seems to be the best way to really learn this stuff.

Issue 1: Rotating the device caused the app to reload.

To  resolve this, I added the following to the \<activity\> section AndroidManifest.xml:

<div class="highlight"><pre><code class="language-xml" data-lang="xml">
	<span class="nl">android:configChanges =</span> <span class="sc">"orientation|screenSize"</span></code></pre></div>

By default, when the screen size or orientation change, the activity is restarted. This tells the activity to handle these configuration changes and remain running while the onConfigurationChage() method is called

Issue 2: Some colors in the design spec didn't provide much contrast against the white text. I eliminated a light gray background option and changed the pink to something higher contrast for better readability.

Issue 3: The "Show another fun fact" button didn't give any visual indication of being tapped. I added this functionality by creating an XML file describing how the button should look when it is pressed and unpressed. I pointed the Button view in my layout XML to that file for the background property.

There are a few other things I'd like to do to improve Fun Facts, like making sure a given color or fact doesn't repeat.

