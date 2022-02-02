require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

#create new employees using the create method
@store1.employees.create(first_name: "Julia", last_name: "Jordan", hourly_rate: 70)
@store1.employees.create(first_name: "Bob", last_name: "stone", hourly_rate: 65)
@store1.employees.create(first_name: "Alice", last_name: "Martin", hourly_rate: 85)

@store2.employees.create(first_name: "Mark", last_name: "White", hourly_rate: 55)
@store2.employees.create(first_name: "Sam", last_name: "Kingston", hourly_rate: 60)
@store2.employees.create(first_name: "Mary", last_name: "Hill", hourly_rate: 115)
