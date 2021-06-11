require "./employee.rb"
require "./manager.rb"
require "./intern.rb"

employee1 = Employee.new({first_name: "Majora", last_name: "Carter", salary: 80000, active: true})
employee2 = Employee.new({first_name: "Danilo", last_name: "Campos", salary: 70000, active: true})

employee1.print_info
employee2.print_info

employee1.active 
employee1.active = false        ## employee1.active=(false)
employee1.active


manager = Manager.new({first_name: "Sharon", last_name: "Yitbarek", salary: 100000, active: true, employees: [employee1, employee2]})
manager.print_info
manager.send_report
manager.give_all_raises
p employee1.salary
p employee2.salary
employee1.print_info
employee2.print_info
manager.fire_all_employees
p employee1.active
p employee2.active

intern = Intern.new({first_name: "Adrienne", last_name: "lowe", salary: 50000, active: true})
intern.print_info