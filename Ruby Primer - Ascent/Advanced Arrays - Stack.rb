class Stack
  
  def initialize(size)
    @store = Array.new
    @max = size - 1
    @top = -1
  end
  
  def pop
    if empty?
      nil
    else
      @top  -= 1
      @store.pop
    end
  end
  
  def push(element)
    if element == nil || full?
      nil
    else
      @top += 1
      @store.push(element)
      self
    end
    
  end
  
  def size
    return (@max + 1)
  end
  
  def look
    @store[@top]
  end
  
  private
  
  def full?
    true if @top == @max
  end
  
  def empty?
    true if @top == -1
  end
end

## 2nde Solution
class Stack
  def initialize(size)
    @size = size
    @store = Array.new()
    @top = 0
  end
  
  def pop
    return nil if empty?
     @top -= 1
     @store[@top + 1]
  end
  
  def push(element)
    return nil if full? || element.nil?
    @top += 1
    @store[@top] = element
    self
  end
  
  def size
    @size
  end
  
  def look
    @store[@top]
  end
  
  private
  
  def full?
    @top == @size
  end
  
  def empty?
    @top == 0
  end
end

## Solution RubyMonk
class Stack
  def initialize(size)
    @size = size
    @store = Array.new(@size)
    @top = -1
  end
  
  def pop
    if empty?
      nil
    else
      popped = @store[@top]
      @store[@top] = nil
      @top = @top.pred
      popped
    end
  end
  
  def push(element)
    if full? or element.nil?
      nil
    else
      @top = @top.succ
      @store[@top] = element
      self
    end
  end
  
  def size
    @size
  end
  
  def look
    @store[@top]
  end
  
  private
  
  def full?
    @top == (@size - 1)
  end
  
  def empty?
    @top == -1
  end
end