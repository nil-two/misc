stacks = []
noStack = gets.to_i
noStack.times {|i|
  stacks[i] = []
}

while line = gets do
  operation, *args = line.chomp.split
  case operation
  when "push"
    index, block = args[0].to_i-1, args[1]
    stacks[index].push(block)
  when "pop"
    index = args[0].to_i-1
    puts stacks[index].pop()
  when "move"
    src, dst = args[0].to_i-1, args[1].to_i-1
    block = stacks[src].pop()
    stacks[dst].push(block)
  when "quit"
    break
  end
end
