require 'rspec'
require_relative 'sort'

describe 'Sort' do
  it 'should return [] when sorting []' do
    input_array = []
    expect(sort(input_array)).to eq([])
  end

  it 'should return [1] when sorting [1]' do
    input_array = [1]
    expect(sort(input_array)).to eq([1])
  end

  it 'should return [1, 2] when sorting [2, 1]' do
    input_array = [2, 1]
    expect(sort(input_array)).to eq([1, 2])
  end

  it 'should return [1, 2, 3, 4] when sorting [3, 1, 4, 2]' do
    input_array = [3, 1, 4, 2]
    expect(sort(input_array)).to eq([1, 2, 3, 4])
  end

  it 'should return [1, 2, 3, 4, 5, 6] when sorting [3, 1, 4, 2, 6, 5]' do
    input_array = [3, 1, 4, 2, 6, 5]
    expect(sort(input_array)).to eq([1, 2, 3, 4, 5, 6])
  end
end