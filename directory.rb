@students = []

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  name = STDIN.gets.chomp
  while !name.empty? do
    @students << {name: name, cohort: :november}
    puts "We now have #{@students.count} students"
    name = STDIN.gets.chomp
  end
end

def interactive_menu
  loop do
    print_menu
    process(STDIN.gets.chomp)
  end
end

def print_menu
  puts "1. Enter students"
  puts "2. Print the students"
  puts "3. Save students to students.csv"
  puts "4. Load students from students.csv"
  puts "5. Exit program"
end

def show_students
  print_header
  print_students_list
  print_footer
end

def process(input)
  case input
    when "1"
      input_students
    when "2"
      show_students
    when "3"
      save_students
    when "4"
      load_students
    when "5"
      exit
    else
      puts "I don't know what you want. Please try again."
  end
end

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

def save_students
  file = File.open("students.csv", "w")
  @students.each do |student|
    student_data = [ student[:name], student[:cohort] ]
    csv_line = student_data.join ","
    file.puts csv_line
  end
  file.close
end

def load_students(filename = "students.csv")
  file = File.open(filename, "r")
  file.readlines.each do |line|
    name, cohort = line.chomp.split("")
    @students << { :name => name, :cohort => cohort.to_sym }
  end
  file.close
end

def try_load_students
  filename = ARGV.first
  return if filename.nil?
  if File.exists?(filename)
    load_students(filename)
    puts "#{filename} file loaded with #{@students.count} students"
  else
    puts "Sorry, this file does not exist"
    exit
  end
end

try_load_students
interactive_menu
