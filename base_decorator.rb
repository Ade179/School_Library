require './nameable'

class BaseDecorator < Nameable
  def initializer(nameable)
    @nameable = nameable
  end

  def correct_name
    @nameable.correct_name
  end
end
