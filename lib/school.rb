class School

    attr_reader :name , :roster
    
    def initialize(name)
        @name = name
        @roster = {}
    end 
    def roster 
        @roster
    end 
    def add_student(name, grade)
        if @roster.has_key?(grade)
        @roster[grade]<< name
        else 
        @roster[grade] = [name]
        end 
    end 
    def grade(grade)
        @roster[grade]
    end
    def sort 
        @roster.select do |grade, students|
            students.sort!
        end 
    end 
        
   

end 