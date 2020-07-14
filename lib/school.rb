require 'pry'
class School
    attr_accessor :roster, :student, :school
    def initialize (name)
        @name = name
        @roster = {}
    end

    def add_student(student, year)
        if !@roster[year]
            @roster[year] = []
        end
        @roster[year] << student
    end

    def grade(year)
        @roster[year] 
    end

    def sort
        @roster.sort
    end

end
