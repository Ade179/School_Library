class Person
  attr_accessor :name, :age
  attr_reader :id

  def initializer(id, name = 'unknown', age, parent_permission: 'true')
    @id = id
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  def can_use_service?
    if is_of_age? || @parent_permission == 'true'
      'true'
    else
      'false'
    end
  end

  private

  def of_age?
    if @age >= 18
      'true'
    else
      'false'
    end
  end
end
