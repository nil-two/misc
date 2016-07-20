$<.each do |line|
  raw_a, op, raw_b = line.split
  break if op == "?"

  a, b = raw_a.to_i, raw_b.to_i
  puts case op
  when "+"; a + b
  when "-"; a - b
  when "*"; a * b
  when "/"; a / b
  end
end
