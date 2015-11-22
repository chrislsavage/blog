---
layout: post
title:  "More Enumerables"
date:   2015-11-21 11:45:44 -0500
categories: phase-1
---

Enumerables that return hashes explicitly:
-#select
-#group_by
There must be more!

###Enumerable#each_slice 
Returns **nil**  You need to be able to take the output and turn it into something else because it is not destructive. Either #map or #to_a can be used (and others).

###Enumerable#find
Returns an **object or nil**. Returns first where block is not false
   
```ruby
(1..100).find    { |i| i % 5 == 0 and i % 7 == 0 }   #=> 35
```
  
###Enumerable#group_by
  
```ruby
1..6).group_by { |i| i%3 }   #=> {0=>[3, 6], 1=>[1, 4], 2=>[2, 5]}
```
 
###Enumerable#inject
You can use inject to create hashes from arrays, build arrays, and just do fun stuff in general.

Inject basically does the same thing as reduce, except you can specify what you are passing in to begin the sequence.

```ruby
[5, 6, 7, 8].inject (0) { |result_memo, object| result_memo + object }
```

in this case the value you set initially (0) gets passed in as the result memo the first time, the object gets set to the value at index 0. If you don't set an initial value the result memo gets set to the first value in the array (0 index), and the object gets set as the second value (1 index).  

You can also create new arrays with inject by just passing the values to a new array.
  
```ruby
[5, 6, 7, 8].inject([]) do |result_memo, element| 
result_memo << element.to_s if element % 2 == 0
result memo
end  #=>  ["6", "8"]
```
  
Lastly you can create hashes by passing in a hash element to the block:
  
```ruby
hash = [[:first_name, 'Shane'], [:last_name, 'Harvie']].inject({}) do |result, element|
  result[element.first] = element.last
  result
end

hash # => {:first_name=>"Shane", :last_name=>"Harvie"}
```
OR
  
```ruby
hash = [[:first_name, 'Shane'], [:last_name, 'Harvie']].inject({}) do |result, element|
  result[element.first.to_s] = element.last.downcase
  result
end

hash # => {"first_name"=>"shane", "last_name"=>"harvie"}
```
   
###Enumerable#map Enumerable#collect
They are the same thing. Returns an **array**

###Enumerable#max_by (min) as well

If no block is given, an enumerator is returned instead.
```ruby
a = %w(albatross dog horse)
a.max_by { |x| x.length }   #=> "albatross"
```
If the n argument is given, minimum n elements are returned as an array.
```ruby
a = %w[albatross dog horse]
a.max_by(2) {|x| x.length } #=> ["albatross", "horse"]
```

##Enumerable#reduce 
Returns an **object**. Combines all the items in the enum (See #inject)
```ruby
(5..10).reduce(:+)   #=> 45
```

##Enumerable#reject
Returns an **ARRAY** where the given block returns false

```ruby
[1, 2, 3, 4, 5].reject { |num| num.even? } #=> [1, 3, 5]
```

##Enumerable#select
The reverse of #reject. Creates an **ARRAY** when the given block returns true.

Returns a **Hash**  when used with a hash object.

```ruby
{:a => 1, :b => 2}.select{ |k,v| v == 1 } #=> {:a => 1 }
```

###Enumerable#sort_by
Returns an **array**.



