require './Document'
class Newspaper < Document
  attr_accessor :dayIssue
  
  
  def initData(id, nxb, number, dayIssue)
    super(id, nxb, number)
    self.dayIssue = dayIssue
  end
  
  def create()
    super()
    print "Ngay phat hanh : "
    self.dayIssue = gets.chop()
  end

  def display()
    print "BAO : "
    super.display()
    puts "\tNgay phat hanh : #{self.dayIssue}"
  end
end