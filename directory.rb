#interactive menu
def interactive_menu
  students = []
  loop do
    # 1. print the menu and ask the user what to do
    puts "1. Input the students"
    puts "2. Show the students"
    puts "9. Exit" # 9 because we'll be adding more items
    # 2. read the input and save it into a variable
    selection = gets.chomp
    # 3. do what the user has asked
    case selection
    when "1"
      students = input_students
    when "2"
      print_header
      print_students_list(students)
      print_footer(students)
    when "9"
      exit # this will cause the program to terminate
    else
      puts "I don't know what you meant, try again"
    end
  end
end
#lets put all students into an array
def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # create an empty array
  students = []
  # get the first name
  name = gets.chomp
  # while the name is not empty, repeat this code
  # ask for the cohort
  puts "Please enter the cohort"
  cohort = gets.chomp
  while !name.empty? && !cohort.empty? do
    # add the student hash to the array
    students << {name: name, cohort: cohort, hobbies: :polo, country: :korea}
    puts "Now we have #{students.count} students"
    # get another name from the user
    name = gets.chomp
    # ask for the cohort
    cohort = gets.chomp
  end
  students
  end
  # return the array of students
####Add more information: hobbies, country of birth, height, etc.
#center header
def print_header
  puts "The students of my cohort at Makers Academy".center(150)
  puts "-------------".center(150)
end
#print student names with each
#center print_with_each
def print_students_list(students)
    students.each do |student|
    puts "#{student[:name]} (#{student[:cohort.to_sym]}) cohort, they like #{student[:hobbies]}, they were born in #{student[:country]}".center(150)
  end
end
#print student names with index
def print_with_index(students)
  students.each_with_index do |student, index|
    puts "#{index}: #{student[:name]} (#{student[:cohort]} cohort, they like: #{student[:hobbies]})"
  end
end
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
#center footer
def print_footer(students)
  puts "Overall, we have #{students.count} great students".center(150)
end
#nothing happens until we call the methods
interactive_menu




###struggling with: Once you complete the previous exercise,
#change the way the users are displayed: print them grouped by cohorts.
#To do this, you'll need to get a list of all existing cohorts (the map()
#  method may be useful but it's not the only option), iterate over it and
#  only print the students from that cohort.
#Right now if we have only one student, the user will see a message "Now we
#have 1 students", whereas it should be "Now we have 1 student". How can you
#fix it so that it used singular form when appropriate and plural form otherwise?
