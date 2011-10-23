require 'extraction'
require 'active_record'
require 'user'
require 'actions'
require 'commands'

puts "\t---______________________---\n\t    Autenticazione Paiolo\n\t---______________________---"

print "username: "
username=gets
print "password: "
password=gets

while((login_user=User.find_by_username_and_password(username.chomp, password.chomp))== nil)
  puts "-------------------------\nUsername  password errati\n-------------------------"
  puts "username: "
  username=gets
  puts "password: "
  password=gets
end
cmd=Commands.new
puts "Benvenuto "+login_user.nome
typed=gets
typed=typed.chomp
while(typed!='exit')

  cmd.exec(typed)
  typed=gets
  typed=typed.chomp

end

puts "Bye Bye!"

=begin

puts " Inserisci n° concorso data(gg/mm/aaaa) sei numeri più jolli e superstar"
line=gets

new_extraction = Extraction.new
new_extraction.set_from_input(line)
new_extraction.save
=end
