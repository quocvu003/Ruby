require './Document'
class Book < Document
  attr_accessor :author, :pageNumber

  # def initialize()
  # end
  def initData(id, nxb, number, author, pageNumber)
    super(id, nxb, number)
    self.author = author
    self.pageNumber = pageNumber
  end
  
  def create()
    super()
    print "Tac gia: "
    self.author = gets.chop()
    print "So trang: "
    self.pageNumber = gets.chop()
  end
  
  def display()
    print "SACH : "
    super.display()
    puts "\tTac gia : #{self.author} || So trang : #{self.pageNumber}"
  end
end