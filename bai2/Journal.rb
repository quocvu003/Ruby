require './Document'
class Journal < Document
  attr_accessor :issueNumber, :monthIssue 
  def initData(id, nxb, number, issueNumber, monthIssue)
    super(id, nxb, number)
    self.issueNumber = issueNumber
    self.monthIssue = monthIssue
  end

  def create()
    super()
    print "So phat hanh"
    self.issueNumber = gets.chop()
    print "Thang phat hanh"
    self.monthIssue = gets.chop()
  end
  def display()
    puts("==========================================")
    print "TAP CHI : "
    super.display()
    puts "\tSo phat hanh : #{self.issueNumber} || Thang phat hanh : #{self.monthIssue}"
  end
end