class Employee

  attr_accessor :name, :title, :salary, :boss

  def initialize(name, title, salary, boss)
    @name = name
    @title = title
    @salary = salary
    @boss = boss
  end

  def bonus(multiplier = 1)
    @salary * multiplier
  end

end #exit Employee class


class Manager < Employee

  def initialize(name, title, salary, boss)
      @employee_list = []
      super(name, title, salary, boss)
  end

  def add_employee(employee)
    @employee_list << employee
    employee.boss = self
  end

  def bonus(multiplier)
    total_salary * multiplier
  end
  #
  def total_salary
    accumulator = 0
    @employee_list.each do |employee|
      if employee.is_a? (Manager)
        accumulator += employee.salary + employee.total_salary
      else
        accumulator += employee.salary
      end #end of if
    end #end of each
    accumulator
  end


end # exit Manager class


ned = Manager.new("Ned", "Founder", 1000000, nil)

darren = Manager.new("Darren", "TA Manager", 78000, ned)

shawna = Employee.new("shawna", "TA", 12000, darren)

david = Employee.new("david", "TA", 10000, darren)

ned.add_employee(darren)

darren.add_employee(shawna)

darren.add_employee(david)

# p david.bonus(3)
# p darren.total_salary
p darren.bonus(4)
# p ned.bonus(5)
# p ned.total_salary
