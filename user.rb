require 'rubygems'  
require 'active_record' 
 
ActiveRecord::Base.establish_connection(  
:adapter => "mysql",  
:host => "localhost", 
:username => 'root',
:password => '123456', 
:database => "paiolo"  
)  

class User < ActiveRecord::Base
  
end