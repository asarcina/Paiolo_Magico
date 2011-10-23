require 'rubygems'  
require 'active_record' 
 
ActiveRecord::Base.establish_connection(  
:adapter => "mysql",  
:host => "localhost", 
:username => 'root',
:password => '123456', 
:database => "paiolo"  
)  

class Extraction < ActiveRecord::Base
      
  def set_from_input(line)

    input=line.split
    self.concorso=input[0]
    self.data=Date.strptime(input[1], '%d/%m/%Y')
    self.n_1=input[2]
    self.n_2=input[3]
    self.n_3=input[4]
    self.n_4=input[5]
    self.n_5=input[6]
    self.n_6=input[7]
    self.n_j=input[8]
    self.n_s=input[9]
  end
  
end