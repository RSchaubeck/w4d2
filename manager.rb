require_relative "employee"

class Manager < Employee

  attr_reader :employees

  def initialize(name, title, salary, boss=nil)
    employees = []
    super
  end

  def bonus(multiplier)
    total_salary = employees.inject { |acc, ele| acc.salary += ele.salary}
    total_salary * multiplier
  end


end