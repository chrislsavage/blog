---
layout: post
title:  "Ruby Classes"
date:   2015-10-19 11:45:44 -0500
categories: phase-0
---


##You need some class in your life

Classes are a feature of "Object-Oriented Programming."  What is Object-oriented programming you may ask?

Object-oriented programming (OOP) has, you can guess, everything to do with objects. Everything is an object in Ruby, but classes "show-off" OOP in a clear, definable way. 

### Rolling the dice with Classes

Here is an example of a class:

![alt text][../imgs/dieclass.png]

As you can see. The class is an object that represents a die that you would roll. The die has sides (defined by the method "sides"), and it has a way you can "roll" the dice (defined by the method "roll").

### Working Through the Die

When we want to create a new die we would pass it what is on each face of the die. We would create a variable and pass it whatever we want written on the sides. In this example we would start with  6_sided_die = Die.New([1,2,3,4,5,6]) 

In this example we are creating a simple die that we would use everyday in backgammon: a six-sided die. 
It would be initialized with 6 sides with the numbers 1-6 as the lables on the sides.  Thus, we are passing the array [1,2,3,4,5,6] as an argument to the labels variable in the initialize(labels) method.

If we didn't pass any labels to the sides of the die we would get an argument raised that says "Your die needs labels", but since we are passing it an array we are passing the labels array ([1,2,3,4,5,6]) to the instance variable @labels.

### Local vs Instance Variables

An instance variable means that whenever we create a new die, the labels that we passed as an argument will be accessible to every method within the die class. As you can see in this Die, the "sides" method defines how many sides there are on the die by counting the labels with the .count method (there are six sides). The @label is is accessible within the .sides method and the .roll method. If we didn't assign the labels (local)variable to the @label (intance variable). Then the labels values would only be accesible to the .initialize method. 

This is the main difference between a local and an instance variable. A local variable is only availible within the method it is defined in. An instance variable is availible within every instance of a class. 

### .roll(ing) the Die

The last method will roll the die.  So if we call  p 6_sided_die.roll  on the die we created it will grab a random number in the @labels variable and return it to the screen. 

### Rolling it All Together

To summarize, Classes are an object in ruby that represents real world objects. The objects we have in our everyday life have things that they can do, just like die can be rolled. Lights can be turned on and off. Knights in chess can be moved two spaces one way, then one space another way. All of these objects can be represented in Ruby and we can define actions by using methods. These classes can interact with one another (like a knight with a chess board), just like they do in real life.  