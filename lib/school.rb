class School
  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end 

  def add_student(student, grade)
   roster[grade] ||= []
   roster[grade] << student
  end 

  def grade(grade)
    roster.detect do |x, y| 
      if x == grade
        return y 
      end 
    end 
  end 




def sort  #part 4
    sorted = {} 
    roster.each do |grade, students| #iterate through each grade and student
      sorted[grade] = students.sort #grade is the key in the sorted hash. Value is the students sorted in ABC order.
    end
    sorted #the new sorted roster.
  end
end
def sort 
  nu_hash = {}
  roster.each do |x, y| 
    nu_hash[x] = y.sort 
  end 
  nu_hash
end 

end 
