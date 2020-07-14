# code here!
require 'pry'
class School

    attr_accessor :roster
    def initialize(name)
        @name = name
        @roster = {}
    end


    def add_student(student_name, grade)
        if(@roster[grade] == nil)
          @roster[grade] = []
        end
        @roster[grade] << student_name
    end

    def grade(grade)
        @roster[grade].map do |names|
            names
        end
    end

    def sort
      @roster.each_with_object({}) do |(grade, student_name), hash|
        hash[grade] = student_name.sort
      end
    end

end