require './person'
describe Person do
  context 'When testing the Person class' do
    it 'should create a person with name and age' do
      person = Person.new('John', 20)
      expect(person.name).to eq 'John'
      expect(person.age).to eq 20
    end
  end
end
