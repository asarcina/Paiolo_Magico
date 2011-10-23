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
    when "loo"
      puts "Load only one extraction from terminal input"
      insert_new_extraction
      puts "Done!"
    when "h"
      help
    else
      puts "Comando non valido "
      help
    end

  end

  def help
    puts "Help command"
    puts "lff \t\t Load data from txt file"
    puts "loo \t\t Load only one extraction from terminal input"
    puts "h   \t\t Help command-this!"
    puts "exit \t\t To quit from program"

  end

  def load_from_file
    print "Inserisci Path file :"
    path=gets
    Actions.new.insert_all_from_file(path.chomp)
  end

  def insert_new_extraction
    puts " Inserisci n° concorso data(gg/mm/aaaa) sei numeri più jolli e superstar tutti separati da uno spazio"
    line=gets
    Actions.new.insert_only_one(line)

  end

end
