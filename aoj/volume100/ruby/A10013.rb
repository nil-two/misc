$<.each do |line|
  h, w = line.split.map(&:to_i)
  break if h == 0 && w == 0

  edge   = "#"*w + "\n"
  inside = "#" + ("."*(w-2)) + "#\n" 
  frame  = edge + inside*(h-2) + edge + "\n"
  print frame
end
