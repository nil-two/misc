puts gets.split.map(&:to_i).sort{|a, b| b <=> a}.join(" ")
