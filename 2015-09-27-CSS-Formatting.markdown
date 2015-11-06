---
layout: post
title:  "CSS Formatting"
date:   2015-09-27 11:45:44 -0500
categories: phase-0
---

## Inline vs Inline-Block & Positioning

Learning CSS from scratch is tough.  There are a lot of CSS frameworks out there that make life easier, but to become a web developer is to know how you make web sites from scratch. 

There have been two different parts of CSS that have been tough for me to grasp. One is the difference between inline and inline-block, as well as how positioning works.  Lets delve deeper into them both.

### Inline vs Inline-Block

The best example of inline vs inline-block I've found comes from Stack Overflow.  Check out this picture:

![CSS block vs inline vs inline-block](http://i.stack.imgur.com/mGTYI.png)

Inline elements respect left and right margins, but not the top and bottom.  They cannot have a width and and height set. They allow elements to sit on thier left and right. 

Inline-block elements respect all the same settings as inline, but they allow for top and bottom margins and padding.  They respect height and width. Also, they force a line break after each block elements.

### Static, Absolute, Relative, and Fixed Positioning

Elements are positioned statically by default. This means that they are positioned in the order that they are added to the page.  Block elements are positioned below other block elements, and inline elements are displayed next to other inline elements.

Relative positioning has to do with the position being relative to where it would normally be.  Everything 

Fixed positioning means that the position is fixed to the page.  When you scroll or resize the page the element will stay in place. 

Absolute positioning removes the element from the normal flow of where it would be if it was static. Every other element will adjust as if it was removed from the flow.



