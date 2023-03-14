require './person'

class Teacher < Person
  def initializer(specialization)
    super(name, age, parent_permission)
    @specialization = specialization
  end

  def can_use_service?
    'true'
  end
end
