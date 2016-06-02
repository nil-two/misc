def f(x)
  return x * x
end

last = 600
$<.each_line do |line|
  s = 0
  d = line.to_i
  d.step(last-d, d) do |x|
    s += f(x) * d
  end
  puts s
end
