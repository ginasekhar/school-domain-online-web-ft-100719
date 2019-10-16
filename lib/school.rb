# code here!
class School
  
  attr_reader :name, :roster
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(student_name, grade)
    #if !@roster.has_key?(grade)
     # @roster[grade] = []
    #end
    
    @roster[grade] ||= []
    @roster[grade] << student_name
    
  end
  
  def grade(requested_grade)
    @roster[requested_grade]
  end
  
  def sort 
    #@roster.each{ |grade, students| students.sort!}
    @roster.transform_values{ |students| students.sort}
  end
end