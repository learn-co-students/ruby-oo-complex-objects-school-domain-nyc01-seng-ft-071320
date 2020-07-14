require 'pry'

class School
  attr_accessor :roster
  
  def initialize (name)
    @name = name
    @roster = {}
  end
  
  def add_student(name, grade)
    @roster[grade] ||= []
    @roster[grade] << name 
  end 

  def grade(num)
    @roster[num]
  end

  def sort
    output = {}
    @roster.each do |key, value|
      output[key] = value.sort
      #binding.pry
    end
    output
  end
end
