require './capitalize_decorator'
require './person'

describe CapitalizeDecorator do
  context 'When testing the CapitalizeDecorator class' do
    it 'should create a decorator with nameable' do
      nameable = Person.new('John', 20)
      decorator = CapitalizeDecorator.new(nameable)
      expect(decorator.nameable).to eq nameable
    end
  end
end
