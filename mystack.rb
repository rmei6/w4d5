class MyStack
  def initialize
    @store = []
  end

  def push(element)
    store << element
  end

  def pop
    value = store[-1]
    store.pop
    value
  end

  def peek
    store[-1]
  end

  def size
    store.length
  end

  def empty?
    size == 0
  end

  private
  attr_reader :store
end