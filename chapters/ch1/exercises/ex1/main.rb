# Use the code in listings 1.3 and 1.4 to create c2fio.rb, a program that reads a number from a file and writes the Fahrenheit conversion to a different file. The
# resulting program will print the following output, and temp.out will contain the Fahrenheit equivalent of the value in temp.out:

# Reading Celsius temperature value from data file...
# Saving result to output file 'temp.out'

puts 'Reading Celsius temperature value from data file... '

# It reads the content of the file temperature.txt
file_content = File.read('temp-in.txt')
# It connverts to integer the value from the file
celcius = file_content.to_i
fahrenheit = (celcius * 9 / 5) + 32

puts 'Saving result to output file temp.out...'

# It writes the result of the conversion into a new file
file_to_write = File.new('temp-out.txt', 'w')
file_to_write.puts '%d' % fahrenheit
file_to_write.close

puts 'Task completed!'
