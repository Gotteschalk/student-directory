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

# Prints the list of students in Villains Academy
puts "The students of Villains Academy"
puts "-----------"

students.each do |student_name|
  puts student_name
end

# Gives the total number of students in Villains Academy
puts "Overall we have #{students.count} great students"
