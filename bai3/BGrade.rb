require './Student'
class BGrade < Student
  attr_accessor :GradeB
  def initialize(id, name, address, priority)
    super(id, name, address, priority)
    self.GradeB = "Toan -- Hoa -- Sinh"
  end
  def display()
    super()
    puts "KHOI B: #{self.GradeB}"
  end
end