require 'rspec'
require_relative 'duplicate'

describe '#duplicate' do
  it 'should return nil when search duplicate on empty array' do
    array1 = []
    array2 = []
    array3 = []
    expect(duplicate(array1, array2, array3)).to eq(nil)
  end

  it 'should return count of duplicate element when search duplicate an array' do
    array1 = ['abang', 'ijo', 'putih', 'ijo', 'abang']
    array2 = [2, 5, 3, 5, 2]
    array3 = [7, 8, 9, 8, 2]
    expect(duplicate(array1, array2, array3)).to eq(1)
  end
end