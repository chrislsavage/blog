---
layout: post
title:  "Arrays vs Hashes"
date:   2015-09-30 11:45:44 -0500
categories: phase-0
---

This week we get to work with Ruby!  Yay!  I think I have confirmed that I do not have a desire to be a front-end developer after the first 3 weeks of Dev Bootcamp.
    
     
### What's the difference?
    
Ruby's arrays and hashes are indexed collections. Both store collections of objects, accessible using a key. With arrays, the key is an integer, whereas hashes support any object as a key.

Hashes provide constant time lookups by key as opposed to constant time lookups by index.

What does this mean in simple terms?  It specifically means that when you want to look up something in an array, you have to look at it by iterating through it's index or by using a method that parses through the index values in order to find what you are looking for. In a hash you can just access a value using a specific key, which will give you instant access to the value.  It's a real milla-second saver!  
    
### An Example to Clarify

{% highlight ruby %}
pet_array = ["dog", "cat", "pig", "frog"]
{% endhighlight %}

To find "Kermit" we would have to interate through the array using a loop or a method such as:    

With a hash you could just assign a key of "Kermit" to find frog in one line without any iterating. 

Hashes are more powerful than arrays and will be used more frequently as a data type. However, if you just want to store an ordered list, an array will serve as an effective means.
