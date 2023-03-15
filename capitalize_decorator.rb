require './base_decorator'
require_relative('./person')
class CapitalizeDecorator < Base_Decorator
  def correct_name
    @nameable.correct_name.capitalize
  end
end
