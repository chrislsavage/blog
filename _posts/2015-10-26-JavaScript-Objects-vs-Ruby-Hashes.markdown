---
layout: post
title:  "Javascript Objects vs. Ruby Hashes"
date:   2015-10-26 11:45:44 -0500
categories: phase-0
---

## What's the Difference?


###JavaScript Objects

JavaScript objects are composite data structures comprised of properties.  You create an object and add properties to the object.  For example:


Creating an object:
{% highlight JavaScript %}
var obj = {};  or  var obj = new Object();
{% endhighlight %}

Adding an object:
{% highlight JavaScript %}
obj.firstName = “Chris”;  or obj[“firstName] = “Chris”;
{% endhighlight %}

The result:
{% highlight JavaScript %}
var obj = {firstName: “Chris”,}
{% endhighlight %}

### Javascript Object Creation with Constructor Functions

You can also create an object using a constructor function. Constructor functions are helpful when you want to create multiple objects quickly.

Lets say we had a PERSON object,:
{% highlight JavaScript %}
var person = {firstName: “Chris”, lastName: “Savage”,age: 100,}
{% endhighlight %}

If you wanted to create multiple people objects you could use a constructor function:

{% highlight JavaScript %}
Function Person (first, last, age) { this.firstName = first, this.lastName = last, this.age = age,};
{% endhighlight %}

You could create new objects using the _new_ operator like so:

{% highlight JavaScript %}
var chris = new Person(“Chris”, “Savage”, 100);
var anotherPerson = new Person(“Jimmy”, “Smith”, 45)
{% endhighlight %}

Using the constructor function is way faster than using the literal method (top method), when you need to create multiple instances of the same object.

###Ruby Hashes vs JavaScript

Ruby hashes are basically the same as JavaScript Objects.
You would create a Ruby hash by using:
{% highlight Ruby %}
person = {} or person = Hash.new
{% endhighlight %}

The big difference is that you add values to hashes by using the bracket method only, whereas in JavaScript you can use the dot notation or the bracket method (dot notation is the default, with exceptions).


In Ruby you would do the following:
{% highlight Ruby %}
person[:first_name] = “Chris”
person[:last_name] = “Savage”
{% endhighlight %}

With the result being:
{% highlight Ruby %}
person = { :first_name => “Chris”, :last_name=> “Savage”}
{% endhighlight %}

You would access the values in each key in the hash by:
{% highlight Ruby %}
puts Person[:first_name]
=> “Chris”
{% endhighlight %}

In JavaScript you would usually do:
{% highlight JavaScript %}
person.firstName = “Chris”
person.lastName = “Savage”
{% endhighlight %}

With the result being:
{% highlight JavaScript %}
person = { firstName: “Chris”, lastName: “Savage}
{% endhighlight %}

You would access the value in each JS property (instead of calling it a key) by:

{% highlight JavaScript %}
console.log(person.firstName)
=> “Chris"

//or

console.log(person[“firstName”])
=> “Chris"
{% endhighlight %}

As you can see JavaScript objects and Ruby hashes are very similar.
