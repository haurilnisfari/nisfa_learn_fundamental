require 'rspec'
require_relative 'search'

RSpec.describe 'search' do
  it 'should return nil when searching for a value in an empty array' do
    input_array = []
    search_value = 0

    expect(search(input_array, search_value)).to eq(nil)
  end

  it 'should return 0 when searching for 1 in array [1]' do
    input_array = [1]
    search_value = 1

    expect(search(input_array, search_value)).to eq(0)
  end

  it 'should return 1 when searching for 1 in array [0, 1]' do
    input_array = [0, 1]
    search_value = 1
  
    expect(search(input_array, search_value)).to eq(1)
  end

  it 'should return nil when searching for 2 in array [0, 1]' do
    input_array = [0, 1]
    search_value = 2
  
    expect(search(input_array, search_value)).to eq(nil)
  end


end