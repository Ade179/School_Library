require './classroom'

describe Classroom do
  context 'When testing the Classroom class' do
    it 'should create a classroom with label and students' do
      classroom = Classroom.new('Math', 20)
      expect(classroom.label).to eq 'Math'
      expect(classroom.students).to eq 20
    end
  end
end
