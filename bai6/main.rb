require './School'
require './Student'

student1 = Student.new('A', 23, 'Da Nang', 'A')
student2 = Student.new('B', 20, 'Quang Nam', 'B')
student3 = Student.new('C', 20, 'Quang Binh', 'C')
student4 = Student.new('D', 23, 'Ha Noi', 'A')

school = School.new()
school.addStudent(student1)
school.addStudent(student2)
school.addStudent(student3)
school.addStudent(student4)
puts"===================HIEN THI THONG TIN TAT CA THI SINH==============="
school.display()
puts"\n"
# Hiện thị các học sinh 20 tuổi.
puts"===================HIEN THI THONG TIN THI SINH 20 TUOI================"
school.SeachStudent(20, '')
puts"\n"
# các học sinh có tuổi là 25 và quê ở Hà Nội.
puts"===================HIEN THI THONG TIN THI SINH 23 TUOI QUE O DA NANG================"
school.SeachStudent(23, 'Da Nang')
puts"\n"