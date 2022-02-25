class MyQueue
  def initialize
    @queue = []
  end

  def enqueue(element)
    queue << element
  end

  def dequeue
    queue.shift
  end

  def peek
    queue[0]
  end

  def size
    queue.length
  end

  def empty?
    size == 0
  end

  private
  attr_reader :queue
end