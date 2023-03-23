require_relative '../book'

require_relative '../person'

require_relative '../student'

require_relative '../teacher'

require 'json'

def load_books
  if File.exist?('./AllData/books.json')

    file = File.open('./AllData/books.json')

    if file.empty?

      'Please add  books first if this is your fist time using our app'

    else

      books = JSON.parse(File.read('./AllData/books.json'))

      books.each do |book|
        book = Book.new(book['title'], book['author'])

        @books << book
      end

    end

    file.close

  else

    p 'Please add  books first'

  end

  p 'Available books:'

  @books.each { |b| p "Book title: #{b.title}, Author: #{b.author}" } unless @books.empty?
end

def save_book(title, author)
  obj = {

    title: title,

    author: author

  }

  return unless File.exist?('./AllData/books.json')

  file = File.open('./AllData/books.json')

  if file.empty?

    book = [obj]

  else

    book = JSON.parse(File.read('./AllData/books.json'))

    book << obj

  end

  file.close

  myfile = File.open('./AllData/books.json', 'w')

  myfile.write(JSON.pretty_generate(book))

  myfile.close
end

def load_people
  if File.exist?('./AllData/people.json')

    file = File.open('./AllData/people.json')

    if File.empty?('./AllData/people.json')

      p 'Please add people data '

    else

      people = JSON.parse(File.read('./AllData/people.json'))

      people.each do |person|
        if person['option'] == 'Student'

          student = Student.new(person['age'], person['name'])

          @people << student

        else

          teacher = Teacher.new(person['specialization'], person['age'], person['name'])

          @people << teacher

        end
      end

    end

    file.close

  else

    p 'Please insert  data'

  end
end

def save_student(name, age, parent_permission)
  obj = {

    type: 'Student',

    name: name,

    age: age,

    parent_permission: parent_permission

  }

  return unless File.exist?('./AllData/people.json')

  file = File.open('./AllData/people.json')

  if file.empty?

    student = [obj]

  else

    student = JSON.parse(File.read('./AllData/people.json'))

    student << obj

  end

  file.close

  myfile = File.open('./AllData/people.json', 'w')

  myfile.write(JSON.pretty_generate(student))

  myfile.close
end

def save_teacher(name, age, specialization)
  obj = {

    type: 'Teacher',

    specialization: specialization,

    name: name,

    age: age,

    parent_permission: true

  }

  return unless File.exist?('./AllData/people.json')

  file = File.open('./AllData/people.json')

  if file.empty?

    teacher = [obj]

  else

    teacher = JSON.parse(File.read('./AllData/people.json'))

    teacher << obj

  end

  file.close

  myfile = File.open('./AllData/people.json', 'w')

  myfile.write(JSON.pretty_generate(teacher))

  myfile.close
end

def load_rentals
  if File.exist?('./AllData/rentals.json')

    file = File.open('./AllData/rentals.json')

    if file.empty?

      p 'Please add reseve  books first'

    else

      rentals = JSON.parse(File.read('./AllData/rentals.json'))

      p 'Reserved books: '

      rentals.each do |rental|
        p "Name: #{rental['person']}, Book: #{rental['book']} on: #{rental['date']}"
      end

    end

    file.close

  else

    p 'No reservations found, please reseve  books first'

  end
end

def save_rental(date, book, person)
  obj = {

    date: date,
    book: book.title,
    person: person.name
  }

  return unless File.exist?('./AllData/rentals.json')

  file = File.open('./AllData/rentals.json')

  if file.empty?

    rental = [obj]

  else

    rental = JSON.parse(File.read('./AllData/rentals.json'))

    rental << obj

  end

  file.close

  myfile = File.open('./AllData/rentals.json', 'w')

  myfile.write(JSON.pretty_generate(rental))

  myfile.close
end