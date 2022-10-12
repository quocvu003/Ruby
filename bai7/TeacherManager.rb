class TeacherManager
    attr_accessor :ListTeacher
    ListTeacher = []
    # def initialize()
    # end
  
    def addTeacher(teacher)
      ListTeacher << teacher
    end
  
    def cal_realSalary(teacherID)
      ListTeacher.each do |teacher| 
        if(teacher.id.eql?(teacherID))
          teacher.realSalary = teacher.salary + teacher.bonus - teacher.penaty
        end
      end
      # puts ListTeacher[1].display()
    end
    def display()
      ListTeacher.each do |teacher| teacher.display() end
    end
  end