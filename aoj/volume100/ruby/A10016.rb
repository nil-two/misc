$<.each do |line|
  m, f, r = line.split.map(&:to_i)
  break if m == -1 && f == -1 && r == -1

  puts case
  when m == -1 || f == -1;    "F"
  when m+f >= 80;             "A"
  when m+f >= 65;             "B"
  when m+f >= 50;             "C"
  when m+f >= 30 && r >= 50;  "C"
  when m+f >= 30;             "D"
  when m+f <  30;             "F"
  end
end
