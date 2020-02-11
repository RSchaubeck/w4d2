class Employee

  attr_reader :salary

  def intialize(name, title, salary, boss=nil)
    @name = name
    @title = title
    @salary = salary
    boss.employees << self unless boss.nil?
  end

  def bonus(multiplier)
    salary * multiplier
  end

end