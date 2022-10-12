class School
    attr_accessor :ListStudent
    ListStudent = []
    def initialize()
  
    end
  
    def addStudent(student)
      ListStudent << student
    end
  
    def SeachStudent (age, hometown)
      ListStudent.each do |student| 
        if(student.age == age && student.hometown.include?(hometown))
          student.display() 
        end
      end
    end
    def display()
      ListStudent.each do |student| student.display() end
    end
  end