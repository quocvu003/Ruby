class Human
    @name_270;
    @hair_270;
    @age_270;
    @height_270;
    @weight_270;
    @email_270;
    @phone_270;
    @nation_270;
 
    def initialize(name_270, hair_270, age_270, height_270, weight_270, email_270, phone_270,nation_270)
       @name_270 = name_270;
       @hair_270 = hair_270;
       @age_270 = age_270;
       @height_270 = height_270;
       @weight_270 = weight_270;
       @email_270 = email_270;
       @phone_270 = phone_270;
       @nation_270 = nation_270;
    end
 
    attr_accessor :name_270, :hair_270, :age_270, :height_270, :weight_270, :email_270, :phone_270, :nation_270;
 
    def showInformation
       puts "\nName : #{name_270}||Hair: #{hair_270}||Age: #{age_270}||Height: #{height_270}||Weight: #{weight_270}||Email: #{email_270}||Phone: #{phone_270}||Nation: #{nation_270};"
     end
 end
 
 class Student < Human
    $code_270;
    $grade_1_270;
    $grade_2_270;
    $grade_3_270;
 
    def initialize(name_270, hair_270, age_270, height_270, weight_270, email_270, phone_270,nation_270, code_270, grade_1_270, grade_2_270, grade_3_270)
       super(name_270, hair_270, age_270, height_270, weight_270, email_270, phone_270,nation_270)
       @code_270 = code_270;
       @grade_1_270 = grade_1_270;
       @grade_2_270 = grade_2_270;
       @grade_3_270 = grade_3_270;
    end
 
    def code_270
       @code_270
    end
    def grade_1_270
       @grade_1_270
    end
    def grade_2_270
       @grade_2_270
    end
    def grade_3_270
       @grade_3_270
    end
    
    def code_270=(code_270)
       @code_270 = code_270
    end
    def grade_1_270=(grade_1_270)
       @grade_1_270 = grade_1_270
    end
    def grade_2_270=(grade_2_270)
       @grade_2_270 = grade_2_270
    end
    def grade_3_270=(grade_3_270)
       @grade_3_270 = grade_3_270
    end
    
    def average_270
       (@grade_1_270 + @grade_2_270 + @grade_3_270 )*1.0/3
    end
 
    def showInformation
       super
       puts "Code : #{code_270}\nAverage score: #{average_270};
        "
    end
 end
 
 # name, hair, age, height, weight, email, phone,nation, code, grade_1, grade_2, grade_3
 listStudent_270 = Array.new
 student_1_270 = Student.new("Vu1","Black",21,170, 70, "quocvu1@gmail.com","0905123456","VN",1911505310270, 10,10,9)
 student_2_270 = Student.new("Vut2","Yellow",22,180, 80, "quocvu2@gmail.com","0905456789","VN",1911505310244, 9,10,9)
 student_3_270 = Student.new("Vut3","Blue",23,190, 90, "quocvu3@gmail.com","0905987654","VN",1911505310245, 9,9,9)
 
 listStudent_270.push(student_1_270, student_2_270,student_3_270)
 puts 'Show student list :'
 for i in 0..(listStudent_270.length-1)
     puts "- Student #{i+1}"
     puts listStudent_270[i].showInformation
  end
 
  puts 'Sorted student list :'
 
  studentSort_270 = listStudent_270.sort_by{|student| [student.average_270]}.reverse
  for i in 0..(studentSort_270.length-1)
     puts "- Student #{i+1} :"
     puts studentSort_270[i].showInformation
  end