require 'rspec'
require_relative 'stack'

describe 'Stack' do
  it 'should return nil when reading an empty stack' do
    stack = Stack.new

    expect(stack.read()).to eq(nil)
  end

  it 'should return 1 when reading a stack with data [1]' do
    stack = Stack.new
    stack.push(1)

    expect(stack.read()).to eq(1)
  end

  it 'should return 1 when popping a stack with data [1]' do
    stack = Stack.new
    stack.push(1)

    expect(stack.pop()).to eq(1)
  end

  it 'should return nil when popping an empty stack' do
    stack = Stack.new

    expect(stack.pop()).to eq(nil)
  end

end