n           = gets.to_i
exist_cards = $<.map(&:chomp)

suits = %w[S H C D]
ranks = [*1..13]
all_cards     = suits.product(ranks).map{|suit, rank| "#{suit} #{rank}"}
missing_cards = all_cards - exist_cards

puts missing_cards
