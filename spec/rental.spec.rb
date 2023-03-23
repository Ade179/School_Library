require './rental'

describe Rental do
  context 'When testing the Rental class' do
    it 'should create a rental with date, book and person' do
      rental = Rental.new('2020-01-01', 'The Hobbit', 'John')
      expect(rental.date).to eq '2020-01-01'
      expect(rental.book).to eq 'The Hobbit'
      expect(rental.person).to eq 'John'
    end
  end
end
