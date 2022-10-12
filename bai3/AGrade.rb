require './Student'

class AGrade < Student
  # attr_accessor : math, physics, chemistry
  # def initialize(math, physics, chemistry)
  #   self.math = math
  #   self.physics = physics
  #   self.chemistry = chemistry
  # end

  attr_accessor :GradeA
  # GradeA =  "Math -- Physics -- Chemistry"
  def initialize(id, name, address, priority)
    super(id, name, address, priority)
    self.GradeA =  "Toán || Lý || Hoá" 
  end
  def display()
    super()
    puts "KHOI A: #{self.GradeA}"
  end
end