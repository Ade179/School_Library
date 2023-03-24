require './base_decorator'

describe Base_Decorator do
  context 'When testing the Base_Decorator class' do
    it 'should create a decorator with nameable' do
      nameable = Person.new('John', 20)
      decorator = Base_Decorator.new(nameable)
      expect(decorator.nameable).to eq nameable
    end
  end
end
