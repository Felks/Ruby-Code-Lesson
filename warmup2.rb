array1 = [1, 2, 3, 4]
array2 = %w{peter piper picked peppers}
array3 = []

# You need to write some code in this part
# to make the program output "Success"
i = 0
while i < 4
  array3 << array1[i].to_s
  array3 << array2[i]
  i += 1
end

if array3 == ['1', 'peter', '2', 'piper', '3', 'picked', '4', 'peppers']
  puts "Success"
else
  puts "Failed"
end