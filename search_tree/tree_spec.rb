require 'rspec'
require_relative 'tree'

describe 'Tree' do
  describe '#root' do
    it 'should return root value when first initialized' do
      tree = Tree.new('A')
      expect(tree.root.value).to eq('A')
    end
  end
end