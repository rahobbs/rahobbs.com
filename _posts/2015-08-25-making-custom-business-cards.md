---
layout:     post
title:      Making custom business cards with generative art
date:       2015-08-25 11:27:00
summary:    
categories: processing
---

Generative art -- art that is produced algorithmically -- is a really interesting area that has a number of applications from pure art to data visualization. At its simplest, the designer/programmer will write code that draws something when it is executed. Some aspect of the design will be generated algorithmically, either based on some kind of input, dataset, or just randomness.

I’ve been interested in generative art for awhile, but never had a real application for it until recently. I needed to order new contact cards and decided to create my own design. For this project, I  took advantage of <a href="https://www.moo.com/share/jwhs5z">Moo.com’s</a> “printfinity” option. This allows you to have a different design on each card (shameless referral link, use it and you get 10% off, I get store credit). To create the unique images, I used a language called Processing. 

<a href="https://processing.org/">Processing</a> is an integrated language and IDE that aims to make programming accessible to artists and designers. Its sister project, <a href="http://processingjs.org/">Processing.js</a>, allows users to write and embed Processing sketches in their web pages. The below is the sketch I used for this project with a decreased width:

<script src="/../res/processing.min.js"></script>
<canvas data-processing-sources="/../res/blueCards.pde"></canvas>

The design is fairly simple, a grid of squares of equal size with colors that are randomized within a certain range. Each square has a gray outline, and the overall card has something of a pixelated look. For the colors, I mostly played around with the RGB values until I had something that I liked, though I will note the final product looks much different in color than what I saw on my screen. I blame this on my laptop monitor and not on Moo’s printing. I set the size to 1039x679 pixels based on Moo’s image guidelines for business cards. The frameRate() setting tells the program how often to run the draw() method. Each time the draw() method runs, a different combination of colored squares is drawn and the file is saved as a .png file. My code is below, and you can also find it <a href="https://github.com/rahobbs/BlueCards">on GitHub</a>:
<pre><code class = "java">
void setup() {
  size(1039,679);
  background(70, 70, 70, 70);
  stroke(75, 100);
  frameRate(5);
 }
 
void draw() {
   int l = 40;
   for (int y=0; y <=height; y+=l) {
       for (int x =0; x<= width; x+=l) {
         fill(random(50,150), random(5,80), 
         random(180,235));
       rect(x,y,l,l);           
      }
      //uncomment below to save each drawing
      //saveFrame("blueCardsGrayLines-####.png");
    }
} </code></pre>

I generated 50 images, then used the Moo business card design tool to upload all 50 and create my cards. This is the final product:

<img src= "/../res/processing_cards.jpg"  ></img>

The most tedious part of this project was uploading the images. As far as I can tell, there is no bulk upload option, so if I want to continue to produce cards that are truly one-of-a-kind, I’ll have to keep uploading images one-by-one.  