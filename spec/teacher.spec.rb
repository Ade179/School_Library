require './teacher'

describe Teacher do
  context 'When testing the Teacher class' do
    it 'should create a teacher with name, age and specialization' do
      teacher = Teacher.new('John', 20, 'Math')
      expect(teacher.name).to eq 'John'
      expect(teacher.age).to eq 20
      expect(teacher.specialization).to eq 'Math'
    end
  end
end
