require './trimmer_decorator'
require './person'

describe TrimmerDecorator do
  context 'When testing the TrimmerDecorator class' do
    it 'should create a decorator with nameable' do
      nameable = Person.new('John', 20)
      decorator = TrimmerDecorator.new(nameable)
      expect(decorator.nameable).to eq nameable
    end
  end
end
