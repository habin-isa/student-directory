#lets put all students into an array
def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # create an empty array
  students = []
  # get the first name
  name = gets.chomp
  # while the name is not empty, repeat this code
  while !name.empty? do
    # add the student hash to the array
    students << {name: name, cohort: :november, hobbies: :polo}
    puts "Now we have #{students.count} students"
    # get another name from the user
    name = gets.chomp
  end
  # return the array of students
  students
end
####Add more information: hobbies, country of birth, height, etc.
def print_header
  puts "The students of my cohort at Makers Academy"
  puts "-------------"
end
#print student names with index
def print_with_index(students)
  students.each_with_index do |student, index|
    puts "#{index}: #{student[:name]} (#{student[:cohort]} cohort, they like: #{student[:hobbies]})"
  end
end
#print student names starting with b
def print_starting_with(students)
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)" if student[:name].start_with?("b")
end
end
#print student names that are shorter than 12 characters
def print_under_twelve_characters(students)
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)" if student[:name].size < 12
  end
end
def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end
#nothing happens until we call the methods
students = input_students
print_header
print_with_index(students)
print_footer(students)
