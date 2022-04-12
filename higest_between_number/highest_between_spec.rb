require 'rspec'
require_relative 'highest_between'

describe 'highest_between' do
  it 'should return nil when sorting []' do
    input_array = []
    expect(highest_between(input_array)).to eq(nil)
  end

  it 'should return 1 when sorting [2,3]' do
    input_array = [2, 3]
    expect(highest_between(input_array)).to eq(1)
  end

  it 'should return 10 when sorting [2,12]' do
    input_array = [2, 12]
    expect(highest_between(input_array)).to eq(10)
  end
  it 'should return nil when sorting [2,1]' do
    input_array = [2, 1]
    expect(highest_between(input_array)).to eq(nil)
  end

  it 'should return 8 when sorting [2,3,10]' do
    input_array = [2, 3, 10]
    expect(highest_between(input_array)).to eq(8)
  end

  it 'should return 8 when sorting [2, 3, 10, 2, 4, 8, 1]' do
    input_array = [2, 3, 10, 2, 4, 8, 1]
    expect(highest_between(input_array)).to eq(8)
  end
end