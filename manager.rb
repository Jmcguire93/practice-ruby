require "./employee.rb"
require "./module_email.rb"


class Manager < Employee
  include EmailReportable
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

# manager = Manager.new({first_name: "Sharon", last_name: "Yitbarek", salary: 100000, active: true, employees: [employee1, employee2]})
# manager.print_info
# manager.send_report
# manager.give_all_raises
# p employee1.salary
# p employee2.salary
# employee1.print_info
# employee2.print_info
# manager.fire_all_employees
# p employee1.active
# p employee2.active