require './book'

describe Book do
  context 'When testing the Book class' do
    it 'should create a book with title and author' do
      book = Book.new('The Hobbit', 'J.R.R. Tolkien')
      expect(book.title).to eq 'The Hobbit'
      expect(book.author).to eq 'J.R.R. Tolkien'
    end
  end
end
