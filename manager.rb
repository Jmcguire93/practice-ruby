class Employee
  attr_reader :first_name, :last_name, :salary, :active
  attr_writer :first_name, :last_name, :salary, :active

  def initialize(input_options)
    @first_name = input_options[:first_name]
    @last_name = input_options[:last_name]
    @salary = input_options[:salary]
    @active = input_options[:active]
  end
  
  def print_info
    puts "#{@first_name} #{@last_name} makes $#{@salary} a year."
  end

  def active=(active)
    @active = active
  end

  def give_annual_raise
    @salary = 1.05 * @salary
  end

end

employee1 = Employee.new({first_name: "Majora", last_name: "Carter", salary: 80000, active: true})
employee2 = Employee.new({first_name: "Danilo", last_name: "Campos", salary: 70000, active: true})

employee1.print_info
employee2.print_info

employee1.active 
employee1.active = false        ## employee1.active=(false)
employee1.active


class Manager < Employee
  
  def initialize(input_options)
    super
    @employees = input_options[:employees]
  end

  def print_info
    super 
    puts @employees
  end

  def send_report
    puts "Sending email..."
    # use email sending library
    puts "Email sent!"
  end

  def give_all_raises
    @employees.each do |employee|
      employee.give_annual_raise
    end   
  end

  def fire_all_employees
    @employees.each do |employee|
      employee.active=(false)
    end
  end
end

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