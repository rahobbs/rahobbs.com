---
layout:     post
title:      JS Prototypal Inheritance Cheat Sheet
date:       2017-03-06
summary:    
categories: javascript
---
The following comes from <a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object/create">https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object/create</a> with some modification. To achieve inheritance in JavaScript, the subclass constructor calls the superclass constructor (and any custom subclass properties or methods can be added after). The subclass prototype and constructor must also be set as shown below.

<pre><code class = "javascript">
// Shape - superclass
function Shape() {
  this.x = 0;
  this.y = 0;
}

// superclass method
Shape.prototype.move = function(x, y) {
  this.x += x;
  this.y += y;
  console.info('Shape moved.');
};

// Rectangle - subclass
function Rectangle() {
  Shape.call(this); // call super constructor.
}

// subclass extends superclass
// Object.create() creates a new object with the specified prototype object
Rectangle.prototype = Object.create(Shape.prototype);
Rectangle.prototype.constructor = Rectangle;

var rect = new Rectangle();

console.log('Is rect an instance of Rectangle?',
  rect instanceof Rectangle); // true
console.log('Is rect an instance of Shape?',
  rect instanceof Shape); // true
rect.move(1, 1); // Outputs, 'Shape moved.
</code></pre>

ECMAScript 6 also introduced classes. These work the same as the prototype based inheritance shows above and are a syntactic sugar made to look like the class-based inheritance seen in in languages like Java.

<pre><code class="javascript">
class Rectangle {
  constructor(height, width) {
    this.height = height;
    this.width = width;
  }
}
</code></pre>
