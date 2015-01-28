#let's put all students into an array
students = [
 "Dr. Hannibal Lecter",
 "Darth Vader",
 "Nurse Ratched",
 "Michael Corleone",
 "Alex De Large",
 "The Alien",
 "Terminator",
 "Freddy Kruger",
 "The Joker",
  ]
#and then print them
def print_header
puts "The students of my cohort at Makers Academy"
puts "-------------"
end

def print(names)
  names.each do |names|
    puts names
end

#Finally, we print the total count

def print_footer(names)
  puts "Overall, we have #{names.length} great students"
end
#nothing happens until we call the methods    
print_header
print(students)
print_footer(students)