# Now convert from Fahrenheit to Celsius using the same techniques. Consider changing the names of your variables (celsius, fahrenheit) to match the new conversion. You can use the same input and output files (temp.dat and temp.out). The resulting program
# will print the following output:

# Reading Fahrenheit temperature value from data file...
# Saving result to output file 'temp.out'

celsius_temps = []

def convert_fahrenheit_to_celsius(fahrenheit_temp)
  (fahrenheit_temp - 32) / 1.8
end

puts 'Reading Fahrenheit temperature values from data file...'

# It reads each line of the file and converts its value into celsius
File.foreach('temp-in.txt') do |fahrenheit_temp|
  celsius_temps.push(convert_fahrenheit_to_celsius(fahrenheit_temp.to_i))
end

puts 'Saving result to output file...'

file_to_write = File.new('temp-out.txt', 'w')

# It reads each converted temperature and writes them to a new file
celsius_temps.each { |temp| file_to_write.puts temp }

puts 'Task completed!'
