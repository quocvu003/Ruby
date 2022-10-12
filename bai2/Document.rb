class Document
    attr_accessor :id, :nxb, :number
    
    def initData(id, nxb, number)
      self.id = id
      self.nxb = nxb
      self.number = number
    end
  
    def create()
      print "ID: "
      self.id = gets.chop()
      print "Nha xuat ban: "
      self.nxb = gets.chop()
      print "So: "
      self.number = gets.chop()
    end
    
    def display()
      puts "Id : #{self.id} || Nha xuat ban: #{self.nxb} || So: #{self.number}"
    end
  end