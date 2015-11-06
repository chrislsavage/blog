---
layout: post
title:  "Ruby #Enumerables"
date:   2015-10-12 11:45:44 -0500
categories: phase-0
---

##Enumerables

An enumerable is a module in Ruby whose job it is to yield items to a block of code, one at a time.  You can tell what the code block is due to its curly braces { block }. Depending on the class you are passing items from, it will vary in its output.  For an array it will go through one item at a time.  For a hash it will yield key/value pairs as two-element arrays [key, value]. For a file it will go through one line of the file at a time.

Now that we have defined what an enumerable is, lets go through some of the methods.   

### Enumerable#map & Enumerable#collect

I have did a little digging on these two methods, and it turns out that they are exactly the same. They are even listed in the same place in the Ruby Docs. .map an d.collect  takes the enumerable object and a block. It then evaluates the block for each element and then returns a new array with the calculated values.

The outcome of 
{% highlight Ruby %}
[1,2,3].map { |n| n*n }  
=> [1,4,9] 
{% endhighlight %}
In this example the enumerable will pass each value of the array into the block and multiply it by itself (1*1 = 1; 2*2 = 4; 3*3 = 9). The result array is  [1,4,9]. 

If you use map to select any specific values like where n >2 then it will evaluate each element and will output only the result which will be either true or false.

The outcome of  
{% highlight Ruby %}
[1,2,3].map { |n| n>2 } 
=>  [false, false, true]. 
{% endhighlight %}
In this  example since 1 and 2 are not greater than 2 they both evaluate to false.  3 is greater than 2 so it evaluates to true.  The result array is [false, false, true] 

### Enumerable#group_by

The .group_by method takes a collection and passes each item into the block and groups them based on certain criteria and places them in a hash. In the hash, the key is the group name and the value will be an array that meets the group criteria.

Lets say we have
{% highlight Ruby %}
arr = [1,2,3,4,5,6,7,8,9] 
{% endhighlight %}
and we want to group them into even and odd.   We can call group by.

The outcome of
{% highlight Ruby %}
arr.group_by {|num| num.even?} 
=>  {false=>[1, 3, 5, 7, 9], true=>[2, 4, 6, 8]}.  
{% endhighlight %}
The key false contains all values that are not even, and the key true contains all values that are even.

### Enumerable#cycle

The .cycle method loops through a collection forever unless you specify how many times you want it to cycle or input a break statement.

In the case of 
{% highlight Ruby %}
arr = [1,2,3,4,5,6,7,8,9]
{% endhighlight %}

If we input 
{% highlight Ruby %}
arr.cycle(2) {|num| puts num} 
=> 1,2,3,4,5,6,7,8,9,1,2,3,4,5,6,7,8,9.
{% endhighlight %}



### Enumerable#grep

The .grep method takes a collection and basically searches the collection for anything that === what you are searching to match. It can be used in conjuction with a .map if you use a block (.grep with .map).

[Some of these examples taken from www.globalnerdy.com](http://www.globalnerdy.com/2008/08/21/enumerating-enumerable-enumerablegrep/)

[Grep example](../imgs/grep.png)