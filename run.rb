require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'

### WOOOOOOOOOoooooooooo

michael = Manager.new("Michael Scott","Admin","47")
toby = Manager.new("Toby Flenderson","Human Resources","42")
dwight = Manager.new("Dwight Schrute","Sales","36")
kevin = Manager.new("Kevin Malone","Accounting","35")
pam = Employee.new("Pam Beasley","Michael Scott","2000")
jim = Employee.new("Jim Halpert","Dwight Schrute","2900")
stanley = Employee.new("Stanley Hudson","Dwight Schrute","3400")
oscar = Employee.new("Oscar Martinez","Kevin Malone","2500")
angela = Employee.new("Angela Martin","Kevin Malone","2350")
Employee.find_by_department("Sales")

### YYYyaaaaaaaaaaayyyyy

binding.pry
puts "done"