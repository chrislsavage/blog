A = 1
$a = 2
a = 3

def method_a(a)
  $a += 2
  p A + $a + a
end

method_a(a)

class Example
  @@a = 4

  def initialize(a)
    @a = a
  end

  def method_a(a)
    @a += 1
    @@a += 2
    $a += 3
    p @a + @@a + A + $a + a
  end
end

a = 6
example1 = Example.new(a)
a = 7
example2 = Example.new(a)

example1.method_a(a)
example2.method_a(a)

a = 3

example1.method_a(a)
example2.method_a(a)