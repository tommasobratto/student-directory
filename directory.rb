def print_header
puts "The students of my cohort at Makers Academy"
puts "-------------"
end

def print(students)
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer(names)
  puts "Overall, we have #{names.length} great students"
end

def input_students
  puts "please enter the names of the students"
  puts "To finish, just hit return twice"
  #create an empty array
  students = []
  #get the first name
  name = gets.chomp
  #while the name is not empty, repeat this code
  while !name.empty? do
    #add the student hash to the array
    students << {:name => name, :cohort => :november}
    puts "now we have #{students.length} students"
    #get another name from the user
    name = gets.chomp
  end
  #return the array of students
  students
end

def interactive_menu
  students = []
  loop do
  # 1. print the menu and ask the user what to do
    puts "1. Input the students"
    puts "2. Show the students"
    puts "9. Exit" # we'll be adding more items
  # 2. read the input and save it into a variable
    selection = gets.chomp
  # 3. do what the user has asked
    case selection
      when "1"
      # input the students
        students = input_students
      when "2"
      # show the students
        print_header
        print(students)
        print_footer(students)
      when "9"
        exit # this will terminate the program
    else 
      "I don't know what you meant, try again"
    end
  # 4. repeat from step 1
  end
end

interactive_menu

  
