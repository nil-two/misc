n = gets.to_i
n.times do
  xa, ya, ra, xb, yb, rb = gets.split.map(&:to_f)
  dis = ((xa-xb)**2 + (ya-yb)**2)**0.5
  if ra+rb < dis
    puts 0
  elsif (ra-rb).abs <= dis
    puts 1
  elsif ra - rb > dis
    puts 2
  elsif rb - ra > dis
    puts -2
  end
end
