# code here!
class School
    attr_reader :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(student, grade)
        if roster[grade] == nil
            roster[grade] = []
            roster[grade] << student
        else 
            roster[grade] << student
        end
    end

    def grade(grade)
        roster[grade]
    end

    def sort
       roster.each do |keys, values|
            values.sort! do |a,b|
                a <=> b
            end
        end
      
    end
end