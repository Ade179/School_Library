require_relative 'runapp'
require_relative 'endapp'

class Main
  def initialize
    start = StartApp.new
    start.menu_options
  end

  def close_app
    EndApp.new
  end
end

main = Main.new
main.close_app
