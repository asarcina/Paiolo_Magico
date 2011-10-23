require 'rubygems'
require 'actions'

class Commands
  #funzione con if per capire il comando
  def exec (command)
    #@action=Actions.new
    case command
    when "lff"
      puts "Load data from txt file"
      load_from_file
      puts "Done!"
    end
  end

  def load_from_file
    print "Inserisci Path file :"
    path=gets
    Actions.new.insert_all_from_file(path.chomp)
  end

end
