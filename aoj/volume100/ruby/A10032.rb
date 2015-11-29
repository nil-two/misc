stack = []
while line = gets do
  operation, block = line.chomp.split
  case operation
  when "push"
    stack.push(block)
  when "pop"
    puts stack.pop()
  when "quit"
    break
  end
end
