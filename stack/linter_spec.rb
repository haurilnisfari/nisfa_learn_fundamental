require 'rspec'
require_relative 'linter'

describe 'Linter' do
  describe '#lint' do
    it 'should return true when linting an empty string' do
      linter = Linter.new
      code = ''
      expect(linter.lint(code)).to eq(true)
    end

    it "should return does not have a closing brace when linting '{' " do
      linter = Linter.new
      code = '{'
      expect(linter.lint(code)).to eq('{ does not have a closing brace')
    end

    it "should return does not have a closing brace when linting '(' " do
      linter = Linter.new
      code = '('
      expect(linter.lint(code)).to eq('( does not have a closing brace')
    end

    it "should return does not have a closing brace when linting '[' " do
      linter = Linter.new
      code = '['
      expect(linter.lint(code)).to eq('[ does not have a closing brace')
    end

    it 'should return true when linting simple & perfectly formed code' do
      linter = Linter.new
      code = '{}'
      expect(linter.lint(code)).to eq(true)
    end

    it 'should return true when linting simple & perfectly formed code' do
      linter = Linter.new
      code = '()'
      expect(linter.lint(code)).to eq(true)
    end

    it 'should return true when linting simple & perfectly formed code' do
      linter = Linter.new
      code = '[]'
      expect(linter.lint(code)).to eq(true)
    end


    it "should return does not have a opening brace when linting '}'" do
      linter = Linter.new
      code = '}'
      expect(linter.lint(code)).to eq('} does not have an opening brace')
    end

    it "should return does not have a opening brace when linting ')'" do
      linter = Linter.new
      code = ')'
      expect(linter.lint(code)).to eq(') does not have an opening brace')
    end

    it "should return does not have a opening brace when linting ']'" do
      linter = Linter.new
      code = ']'
      expect(linter.lint(code)).to eq('] does not have an opening brace')
    end

    it 'should return has mismatched opening brace' do
      linter = Linter.new
      code = '[}'
      expect(linter.lint(code)).to eq('} has mismatched opening brace')
    end

  end
end


