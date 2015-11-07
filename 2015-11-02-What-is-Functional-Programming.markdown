---
layout: post
title:  "What is Functional Programming?"
date:   2015-11-02 11:45:44 -0500
categories: phase-0
---

## Functional vs. Imperative, Declarative, and Procedural Programming

I heard that even though JavaScript is considered an Object Oriented language, it is more akin to a functional programming language. That made me curious. I decided to explore this topic.

I found [this answer](http://stackoverflow.com/questions/602444/what-is-functional-declarative-and-imperative-programming) on Stack Overflow, and [this answer]("http://www.perlmonks.org/?node_id=983655") on perlmonks.org. It seems as though there is a bit of disagreement on the topic.  These are my takeaways.

Before talking about functional programming you have to talk about imperitive, declarative, and procedural programming.

### In a nutshell: 

Imperative programming is like a recipe book. It’s a list of things you are telling the computer to do (e.g. 1. Add flower, 2. Mix 2 eggs).

Declarative programming is a lot like SQL.  You aren’t concerned as much with how you want the computer to get there as much as you are telling the computer what to do. The program figures out the best way to get to the solution that you want. 

Procedural programming is a lot like functional programming, but one step removed. Procedural programming allows for usage of functions, and most imperative languages allow for this now.

Functional programming is different than procedural programming because everything is within a function. Variables only exist in the function. Functions are used as variables.  This allows for recursion to happen so that loops are not needed (because you are taking advantage of other methods that are functions).

In the end, it seems like a lot of languages have allowances for different programming paradigms, but I found this to be a helpful time spent getting a little more clarity of the differences.