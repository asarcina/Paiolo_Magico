require 'rubygems'



class Actions
  def initialize
  end

  def insert_only_one (line)

    new_extraction = Extraction.new
    new_extraction.set_from_input(line)
    new_extraction.save
  end

  def insert_all_from_file (path)

    file=File.open(path, 'r')
    file.each_line do |line|
      new_extraction = Extraction.new
      new_extraction.set_from_input(line)
      new_extraction.save

    end
  rescue IOError => err
    puts "i/o Error : #{err}"
  ensure
    file.close
    end

def magic
  
end
end
