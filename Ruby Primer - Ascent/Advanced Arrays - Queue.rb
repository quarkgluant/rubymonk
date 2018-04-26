class Queue
  def initialize(size)
    @store = Array.new
    @first = -1
    @last = -1
    @max = size - 1
  end
  
  def dequeue
    if empty?
      nil
    else
      @last -= 1
      @store.pop
    end
  end
  
  def enqueue(element)
    if element == nil || full?
      nil
    else
      @last += 1
      @store.unshift(element)
      self
    end
  end
  
  def size
    @max + 1
  end
  
  private
  
  def full?
    @last == @max
  end
  
  def empty?
    @last == -1
  end
end

## 2nde Solution
class Queue
  def initialize(size)
    @size = size
    @store = Array.new
    @queue = 0
  end
  
  def dequeue
    return nil if empty?
    @queue -= 1
    @store.pop
  end
  
  def enqueue(element)
    return nil if full? || element.nil?
    @queue += 1
    @store.unshift(element)
    self
  end
  
  def size
    @size
  end
  
  private
  
  def full?
    @queue == @size
  end
  
  def empty?
    @queue == 0
  end
end

## Solution RubyMonk
class Queue
  def initialize(size)
    @size = size
    @store = Array.new(@size)
    @head, @tail = -1, 0
  end
  
  def dequeue
    if empty?
      nil
    else
      @tail = @tail.succ

      dequeued = @store[@head]
      @store.unshift(nil)
      @store.pop
      dequeued
    end
  end
  
  def enqueue(element)
    if full? or element.nil?
      nil
    else
      @tail = @tail.pred
      @store[@tail] = element
      self 
    end
  end
  
  def size
    @size
  end
  
  private
  
  def empty?
    @head == -1 and @tail == 0
  end

  def full?
    @tail.abs == (@size)
  end
end