a_score, b_score = 0, 0

n_games = gets.to_i
n_games.times do
  a_card, b_card = gets.chomp.split
  case
  when a_card == b_card
    a_score += 1
    b_score += 1
  when a_card > b_card
    a_score += 3
  when a_card < b_card
    b_score += 3
  end
end

puts "#{a_score} #{b_score}"
