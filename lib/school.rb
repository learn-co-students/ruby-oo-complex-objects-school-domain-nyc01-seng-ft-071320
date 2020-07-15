class School
    def initialize(names)
        @roster = {}
    end

    def roster 
        @roster
    end
    
    def add_student(student, grades)
        roster[grades] ||= []
        roster[grades] << student  
    end

    def grade(grades)
        roster.each do |key , value|
            if key == grades
                return value
            end
        end
    end

    
    def sort
    new_hash = {}
        roster.each do |key, value|
        new_hash[key] = value.sort
        end
    new_hash
    end
end    