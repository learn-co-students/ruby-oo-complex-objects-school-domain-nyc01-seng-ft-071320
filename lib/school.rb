

class School
    def initialize(school_name)
        @school_name = school_name
        @roster = {}
    end


    attr_accessor :roster, :school_name

    def add_student(name, grade)
        @roster[grade] ||= []
        @roster[grade] << name
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        @roster.each_with_object({}) do |(grade, student_name), sorted_hash|
             sorted_hash[grade] = student_name.sort
        
        end
    end

end
