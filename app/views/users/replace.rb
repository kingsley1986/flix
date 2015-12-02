puts "please paste your document here"
document = gets.chomp

puts "what would you like to remove?"
remove = gets.chomp

puts "what do you want to replace it with?"
replace = gets.chomp


target = document.split( " ")
target.each do |new_word|

if new_word != remove
puts remove + (" ")
else
puts replace + (" ")
end
end