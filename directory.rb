# Lists the names of students in the Villains Academy in an array
students = [
  { name: "Dr. Hannibal Lecter", cohort: :November },
  { name: "Darth Vader", cohort: :November },
  { name: "Nurse Ratched", cohort: :November },
  { name: "Michael Corleone", cohort: :November },
  { name: "Alex DeLarge", cohort: :November },
  { name: "The wicked Witch of the West", cohort: :November },
  { name: "Terminator", cohort: :November },
  { name: "Freddy Krueger", cohort: :November },
  { name: "The Joker", cohort: :November },
  { name: "Joffrey Baratheon", cohort: :November },
  { name: "Norman Bates", cohort: :November }
  ]

# Method to print the standard header for students
def print_header
  puts "The students of Villains Academy"
  puts "-----------"
end

# Method to print all the names in an array of students
def print(names)
    number = 1
    names.each do |student|
      puts "#{number}. #{student[:name]}, #{student[:cohort]} cohort"
      number += 1
    end
end

# Method to print the standard footer for students summarising total number of students
def print_footer(names)
  puts "Overall we have #{names.count} great students"
end

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  students = []
  name = gets.chomp

  while !name.empty? do
    students << {name: name, cohort: :november}
    puts "We now have #{students.count} students"
    name = gets.chomp
  end
  students
end

students = input_students
print_header
print(students)
print_footer(students)
