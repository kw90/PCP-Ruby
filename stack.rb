# PCP C & Java Uebung Woche 1 Aufgabe 2
class Stack
  def initialize
    @store = Array.new
  end

  def pop
    @store.pop
  end

  def push(element)
    @store.push(element)
    self
  end

  def size
    @store.size
  end

  def isEmpty
    @store.size == 0
  end

  def top
    @store.first
  end
end

class Queue
  def initialize
    @store = Array.new
  end

  def dequeue
    @store.pop
  end

  def enqueue(element)
    # Add new Item to the beginning of an array
    @store.unshift(element)
    self
  end

  def size
    @store.size
  end

  def isEmpty
    @store.size == 0
  end

  def top
    @store.first
  end
end