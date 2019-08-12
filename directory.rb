# Lists the names of students in the Villains Academy in an array
students = [
  "Dr. Hannibal Lecter",
  "Darth Vader",
  "Nurse Ratched",
  "Michael Corleone",
  "Alex DeLarge",
  "The wicked Witch of the West",
  "Terminator",
  "Freddy Krueger",
  "The Joker",
  "Joffrey Baratheon",
  "Norman Bates" ]

# Method to print the standard header for students
def print_header
  puts "The students of Villains Academy"
  puts "-----------"
end

# Method to print all the names in an array of students
def print(names)
    names.each do |name|
      puts name
    end
end

# Method to print the standard footer for students summarising total number of students
def print_footer(names)
  puts "Overall we have #{names.count} great students"
end

print_header
print(students)
print_footer(students)
