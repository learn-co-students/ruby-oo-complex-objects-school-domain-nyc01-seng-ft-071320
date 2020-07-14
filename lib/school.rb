require 'pry'

# code here!
class School

    attr_accessor :name, :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(studentName, grade)
        @roster[grade] = [] if @roster[grade] == nil
        @roster[grade] << studentName
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        @roster.each_with_object({}) do |(grade, students), hash|
            hash[grade] = students.sort
        end
    end
    
end