require './student'

describe Student do
  context 'when testing Student class' do
    it 'should create a student with name, age and parent permission' do
      student = Student.new('John', 9, false)
      expect(student.name).to eq 'John'
      expect(student.age).to eq 20
      expect(student.parent_permission).to eq false
    end
  end
  it 'should create a student with name, age and parent permission' do
    student = Student.new('Tola', 50, true)
    expect(student.name).to eq 'John'
    expect(student.age).to eq 20
    expect(student.parent_permission).to eq true
  end
end
