require './nameable'
class Person < Nameable
  attr_accessor :name, :age, :rentals
  attr_reader :id

  def initializer(age, name = 'unknown', parent_permission: 'true')
    @id = rand(1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rentals = []
  end

  def add_rental(book, date)
    Rental.new(date, book, self)
  end

  def can_use_service?
    of_age? || @parent_permission
  end

  def correct_name
    @name
  end

  private

  def of_age?
    @age >= 18
  end
end
