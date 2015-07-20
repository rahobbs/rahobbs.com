---
layout:     post
title:      Generating random numbers from a range in Java
date:       2015-07-20 15:33:43
summary:    
categories: java
---

In this post, I'll cover how to generate random numbers within a specified range using Java. This technique isn't immediately clear given Java's documentation. Turning to Stack Overflow, the question of how to do this had been asked and answered several times, but none of the answers I found explained why the given solution works. While I was able to get an example working quickly, I wanted to actually understand the solution rather than memorizing it.  In trying to organize my thoughts and write out a question to ask the internet, I came to an answer myself and decided to post it here. Understanding the solution is ultimately easier than memorizing it, and it may be helpful in the future for solving similar problems.

Per the Java documentation on the <a href = "http://docs.oracle.com/javase/7/docs/api/java/util/Random.html">Random class</a>, nextInt(int n)
returns a random number  between 0 (inclusive) and the specified value (exclusive). So to generate a number between 0 and 9, one would use:
<pre><code class = "java">Random rand = new Random();
int randomNumber = rand.nextInt(10); </code></pre>

To generate a random number between 0 and 10, my assumption would now be to do something like:

<pre><code class = "java">int randomNumber = rand.nextInt(10 + 1);</code></pre>

But what if your range starts at some number greater than 0? Let’s say you want to generate a random number from 2-10. To make sure the smallest number generated is 2, you could add 2:

<pre><code class = "java">int randomNumber = rand.nextInt(10 + 1) + 2;</code></pre>

but then you may end up getting an 11 or 12, so finally you would want to subtract 2 from the maximum number:

<pre><code class = "java">int randomNumber = rand.nextInt(10 - 2 + 1) + 2;</code></pre>

This ultimately matches the form that I was able to find in Stack Overflow answers:

<pre><code class = "java">int randomNumber = rand.nextInt(max - min + 1) + min;</code></pre>
