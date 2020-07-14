require 'pry'
class School
    def initialize(roster)
        @roster = {}
    end
    attr_accessor :roster
    def add_student(name, grade)
        if @roster[grade] == nil
            @roster[grade] = []
            @roster[grade] << name
        else @roster[grade] << name
        end
    end
    def grade(grade)
        @roster[grade]
    end
    def sort
        @roster.each do |grade, list|
            @roster[grade] = list.sort
        end
    end
end