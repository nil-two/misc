def grade(m, f, r)
  return case
  when m == -1 || f == -1   ; "F"
  when m+f >= 80            ; "A"
  when m+f >= 65            ; "B"
  when m+f >= 50            ; "C"
  when m+f >= 30 && r >= 50 ; "C"
  when m+f >= 30            ; "D"
  when m+f <  30            ; "F"
  end
end

$<.each do |l|
  break if l.chomp == "-1 -1 -1"

  m, f, r = l.split.map(&:to_i)
  puts grade(m, f, r)
end
