class Person
  attr_accessor :name, :age
  attr_reader :id

  def initializer(age, name = 'unknown', parent_permission: 'true')
    @id = rand(1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  def can_use_service?
    of_age? || @parent_permission
  end

  private

  def of_age?
    @age >= 18
  end
end
