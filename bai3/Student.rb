class Student
    attr_accessor :id, :name, :address, :priority
    
    def initialize(id, name, address, priority)
      self.id = id
      self.name = name
      self.address = address
      self.priority = priority
    end
  
    def display()
      puts "id: #{self.id} -- name: #{self.name} -- address: #{self.address} -- priority -- #{self.priority}"
    end
  end