require './Student'

class CGrade < Student
  attr_accessor :GradeC
  def initialize(id, name, address, priority)
    super(id, name, address, priority)
    self.GradeC = "Van  -- Su -- Dia"
  end

  def display()
    super()
    puts "KHOI C: #{self.GradeC}"
  end
end