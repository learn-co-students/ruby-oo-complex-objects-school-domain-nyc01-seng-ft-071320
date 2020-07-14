# code here!
require 'pry'

class School
    attr_reader :name
    attr_accessor :roster, :student

    def initialize(name)
        @roster={}
        @name=name
    end

    def add_student(additional_student,grade)
        @roster[grade].append(additional_student) if @roster[grade] != nil
        @roster[grade]=[additional_student] if @roster[grade] ==nil
    end

    def grade (grade_level)
        @roster[grade_level]
    end

    def sort
        @roster=@roster.sort_by {|keys,values|keys}
        temp={}
        @roster.each do|array|
            temp[array[0]]=array[1].sort
        end
        @roster=temp
        # binding.pry
        # @roster.each do |grade,students|
        #     @roster[grade]=students.sort
        # end
    end
end

# school = School.new("Bayside High School")
# school.add_student("Homer Simpson", 9)
# school.add_student("Bart Simpson", 9)
# school.add_student("Jeff Baird", 10)
# school.add_student("Avi Flombaum", 10)
# school.add_student("Jack Bauer", 7)
# school.add_student("Blake Johnson", 7)
# p school.sort