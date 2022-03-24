require 'rspec'
require_relative 'compare'

describe '#compare' do
  it 'should return string cannot be empty when comparing empty string' do
    string1 = ''
    string2 = ''

    expect(compare(string1, string2)).to eq('string cannot be empty')
  end

  it 'should return true if all element in string 2 present in string 1' do
    string1 = 'you are my man'
    string2 = 'you are man'

    expect(compare(string1, string2)).to eq(true)
  end

  it 'should return false if any element in string 2 not present in string 1' do
    string1 = 'She is queen'
    string2 = 'She is princess'

    expect(compare(string1, string2)).to eq(false)
  end

  it 'should return false if any element in string 2 not present in string 1' do
    string1 = 'He is really good'
    string2 = 'Really really good'

    expect(compare(string1, string2)).to eq(false)
  end

  it 'should return false if any element in string 2 present in string 1 but with different case' do
    string1 = 'He is really really good'
    string2 = 'Really really good'

    expect(compare(string1, string2)).to eq(false)
  end


end
