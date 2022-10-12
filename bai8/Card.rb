require './Student'
class Card
  attr_accessor :id, :student, :borrowDate, :paymentDate, :bookId
  def initialize(id, student, borrowDate, paymentDate, bookId)
    self.id = id
    self.student = student
    self.borrowDate = borrowDate
    self.paymentDate = paymentDate
    self.bookId = bookId
  end

  def display()
    puts "id card = #{self.id} student name = #{self.student.name}"
  end
end