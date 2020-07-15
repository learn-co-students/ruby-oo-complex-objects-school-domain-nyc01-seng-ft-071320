require "pry"

class School
    def initialize(school_name)
        @school_name = school_name
        @roster = {}
    end

    def school_name
        @school_name
    end

    def roster
        @roster
    end

    def add_student(name, grade)
        if @roster.keys.include?(grade)
            @roster[grade] << name
        else
            @roster[grade] = []
            @roster[grade] << name
        end
    end

    def grade(student_grade)
            roster[student_grade]
    end

    def sort
        @roster.each do |grade, names|
            names.sort!
        end
    end

end

