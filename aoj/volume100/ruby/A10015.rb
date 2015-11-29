require "set"

cards = Set.new
%w[S H C D].each {|kind|
  1.upto(13).each{|i|
    cards << "#{kind} #{i}"
  }
}

_ = gets
$<.each {|l|
  cards.delete(l.chomp)
}

%w[S H C D].each {|kind|
  1.upto(13).each{|i|
    card = "#{kind} #{i}"
    puts card if cards.include?(card)
  }
}
