require "./employee.rb"
require "./module_email.rb"

class Intern < Employee 
  include EmailReportable
end
  




intern = Intern.new({first_name: "Adrienne", last_name: "lowe", salary: 5000, active: true})
intern.print_info
