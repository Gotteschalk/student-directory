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
def print_students_list
    number = 1
    @students.each do |student|
      puts "#{number}. #{student[:name]}, #{student[:cohort]} cohort"
      number += 1
    end
end

# Method to print the standard footer for students summarising total number of students
def print_footer
  puts "Overall we have #{@students.count} great students"
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

@students = []

def interactive_menu
  loop do
    print_menu
    process(gets.chomp)
  end
end

def print_menu
  puts "1. Enter students"
  puts "2. Print the students"
  puts "3. Exit program"
end

def print_students
  print_header
  print_students_list
  print_footer
end

def process(input)
  case input
    when "1"
      @students = input_students
    when "2"
      print_students
    when "3"
      exit
    else
      puts "I don't know what you want. Please try again."
  end
end

interactive_menu
