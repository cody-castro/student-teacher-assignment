require 'pry'
require_relative './teacher.rb'
require_relative './student.rb'

teacher1 = Teacher.new("Williams", "Third", 6)
teacher2 = Teacher.new("Grubb", "Fourth", 4)

student1 = Student.new("Tashawn", "Williams", "Fourth")
student2 = Student.new("Ian", "Grubb", "Third")


binding.pry
0

