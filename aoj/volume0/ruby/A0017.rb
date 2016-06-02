$<.each_line do |s|
  until s =~ /that|the|this/
    s.tr!('a-z', 'b-za')
  end
  puts s
end
