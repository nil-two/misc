require 'date'

weeks = %w[Sunday Monday Tuesday Wednesday Thursday Friday Saturday]

loop do
  month, day = gets.split.map(&:to_i)
  break if month == 0

  date = Date.new(2004, month, day)
  puts weeks[date.wday]
end
