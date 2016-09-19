class Employee

  attr_accessor :name, :title, :salary, :boss

  def initialize(name, title, salary, boss)
    @name = name
    @title = title
    @salary = salary
    @boss = boss
  end

  def bonus(multiplier)

    @salary * multiplier

    # return @salary * multiplier if @employee_list.nil?
    #
    # @employee_list.each do |emp|
    #   total = emp.@salary + emp.bonus(1)
    # end
    #
    # total * multiplier

  end

end


class Manager < Employee

  def initialize(employee_list)


      @employee_list = employee_list
  end

  def bonus(multiplier)
    return @salary * multiplier if @employee_list.nil?

    @employee_list.each do |emp|
      total = emp.@salary + emp.bonus(1)
    end
    
    total * multiplier
  end


end
