$<.each do |l|
  rawA, op, rawB = l.split
  break if op == "?"

  a, b = rawA.to_i, rawB.to_i
  puts case op
  when "+"; a + b
  when "-"; a - b
  when "*"; a * b
  when "/"; a / b
  end
end
