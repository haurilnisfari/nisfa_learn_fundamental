class Stack

  def initialize
    @data = []
  end

  def push(element)
    @data << element
  end

  def read
    @data.last
  end

  def pop
    @data.pop
  end

  def empty
    @data == []
  end

end