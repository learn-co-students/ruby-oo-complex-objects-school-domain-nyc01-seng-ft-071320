# code here!
class School  
    
    attr_accessor :name, :roster
    
    def initialize(name)
        @name = name 
        @roster = {}
    end 

    def add_student(student, grade)
        @roster[grade] ||= []
        @roster[grade] << student  
    end 

    def grade(student_grade) 
        @roster[student_grade]
    end 

    def sort
        @roster.each_with_object({}) do |(grade, student), sortedRoster|
            sortedRoster[grade] = student.sort 
        end 
    end
end