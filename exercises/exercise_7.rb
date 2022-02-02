require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

#Ask the user for a store name
puts "Please enter a store name: "
store = gets.chomp

#Attempt to create a store with the inputted name but leave out the other
store = Store.create(name: store)

#Display the error messages provided back from ActiveRecord to the user
store.errors.messages.each do |message|
  puts "#{message}"
  end