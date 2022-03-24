require 'rspec'
require_relative 'flip'

describe '#flip' do
  it "should return 'string too sort' when flip empty string" do
    string = ''
    expect(flip(string)).to eq('string too sort')
  end

  it "should return 'string too sort' when flip string with length lower than 2" do
    string = 'y'
    expect(flip(string)).to eq('string too sort')
  end

  it "should return 'the output' when flip string with length upper or equal with 2" do
    string = 'dere'
    expect(flip(string)).to eq('e r')
  end

  it "should return 'the output' when flip string with length upper or equal with 2" do
    string = 'ab'
    expect(flip(string)).to eq('b a')
  end

  it "should return 'the output' when flip string with length upper or equal with 2" do
    string = 'bank bca'
    expect(flip(string)).to eq('a c')
  end

  it "should return 'the output' when flip string with length upper or equal with 2" do
    string = 'nilai a'
    expect(flip(string)).to eq('a  ')
  end
end