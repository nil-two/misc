puts $<.to_a.map(&:to_i).sort{|a, b| b <=> a}[0..2]
