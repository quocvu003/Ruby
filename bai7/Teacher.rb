class Teacher

    attr_accessor :name, :age, :hometown, :id, :salary, :bonus, :penaty, :realSalary
    def initialize(id, name, age, hometown, salary,bonus, penaty)
      self.name = name
      self.age = age.to_i
      self.hometown = hometown
      self.id = id
      self.salary = salary.to_f
      self.bonus = bonus.to_f
      self.penaty = penaty.to_f
      # self.realSalary = realSalary
    end
  
    def display()
      puts "#{self.id} || #{self.name} || #{self.age} || #{self.hometown} || #{self.salary} || #{self.bonus} || #{self.penaty} || #{self.realSalary}"
    end
  end