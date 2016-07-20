stacks  = []
n_stack = gets.to_i
n_stack.times do |i|
  stacks[i] = []
end

while line = gets do
  operation, *args = line.chomp.split
  case operation
  when "push"
    dst, block = args[0].to_i-1, args[1]
    stacks[dst].push(block)
  when "pop"
    src = args[0].to_i-1
    puts stacks[src].pop()
  when "move"
    src, dst = args[0].to_i-1, args[1].to_i-1
    block = stacks[src].pop()
    stacks[dst].push(block)
  when "quit"
    break
  end
end
