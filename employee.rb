# employee1 = ["Majora", "Carter", 80000, true]
# employee2 = ["Danilo", "Campos", 70000, true]

# puts "#{employee1[0]} #{employee1[1]} makes #{employee1[2]} a year."

# employee1 = {"first_name" => "Majora", "last_name" => "Carter", "salary" => 80000, "active" => true}
# employee2 = {"first_name" => "Danilo", "last_name" => "Campos", "salary" => 70000, "active" => true}

# puts "#{employee1["first_name"]} #{employee1["last_name"]} makes #{employee1["salary"]} a year."
# puts "#{employee2["first_name"]} #{employee2["last_name"]} makes #{employee2["salary"]} a year."


# employee1 = {:first_name => "Majora", :last_name => "Carter", :salary => 80000, :active => true}
# employee2 = {first_name: "Danilo", last_name: "Campos", salary: 70000, active: true}

# puts "#{employee1[:first_name]} #{employee1[:last_name]} makes #{employee1[:salary]} a year."
# puts "#{employee2[:first_name]} #{employee2[:last_name]} makes #{employee2[:salary]} a year." 


class Employee

  def initialize(first_name, last_name, salary, active)
    @first_name = first_name
    @last_name = last_name
    @salary = salary
    @active = active
  end
  
  
  def print_info
    puts "#{@first_name} #{@last_name} makes $#{@salary} a year."
  end
  
  def first_name
    puts @first_name
  end

  def last_name
    puts @last_name
  end

  def active
    puts @active
  end

  def active=(active)
    @active = active
  end

  def give_annual_raise
    @salary = 1.05 * @salary
  end

end

employee1 = Employee.new("Majora", "Carter", 80000, true)
employee2 = Employee.new("Danilo", "Campos", 70000, true)

employee1.print_info
employee1.give_annual_raise
employee1.print_info

employee2.print_info
employee2.give_annual_raise
employee2.print_info

employee1.active 
employee1.active = false        ## employee1.active=(false)
employee1.active

