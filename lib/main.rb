require_relative 'array_iterator'

new = true
while true
  if new
    new = false
    puts 'enter data with "," between each element'
    array = gets.chomp().split(',')
    array = ArrayIterator.new(array)
  end
  puts "1: next? \n2: print item\n3: next item\nxit to quite"
  op = gets.chomp()

  case op
  when '1' then puts 'yes' if array.has_next?
  when '2' then puts array.item
  when '3' then puts 'next item' if array.next_item
  when '4' then puts new = true
  when 'xit' then break
  else puts 'Error'
  end
end

puts 'bye'
