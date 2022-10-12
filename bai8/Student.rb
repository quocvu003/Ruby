class Student 
    attr_accessor :name, :age, :classs
    def initialize(name, age, classs)
      self.name = name
      self.age = age
      self.classs = classs
    end
  
    def display()
      puts "#{self.name} || #{self.age} || #{self.classs}"
    end
  end