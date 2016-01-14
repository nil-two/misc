a = (1..9).to_a
puts a.product(a).map{|v| "#{v[0]}x#{v[1]}=#{v[0]*v[1]}"}
