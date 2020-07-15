class School
    def initialize(school)
        @school = school
        @roster = {}
    end
    attr_accessor :school
    attr_accessor :roster
    
    def add_student(name, grade)
        if !@roster[grade]
            @roster[grade] = [name]
        else
            @roster[grade].push(name)
        end
    end
    def grade(grade)
        @roster[grade]
    end
    def sort
        @roster.each do |key, value|
            @roster[key] = value.sort
        end
    end
end



