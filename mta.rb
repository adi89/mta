#***MTA Project***

puts "Select: (6)Line, (N)Line or (L)Line"
subway_select = gets.chomp.upcase

subways = Hash.new
subways[:line6] = ["42", "33", "28", "23", "US", "AS"]
subways[:lineN] = ["TS", "34", "28", "23N", "US", "8"]
subways[:lineL] = ["8", "6", "US", "3", "1"]

case subway_select
  when "6"
    puts "Starting at: (42) (33) (28) (23) (US) (AS)?"
    stop_start = gets.chomp
    trip_start = ((subways[:line6].index(stop_start).to_i).abs - (subways[:line6].index(4).to_i).abs).abs
  when "N"
    puts "Starting at: (TS) (34) (28) (23N) (US) (8)?"
    stop_start = gets.chomp
    trip_start = ((subways[:lineN].index(stop_start).to_i).abs - (subways[:lineN].index(4).to_i).abs).abs
  when "L"
    puts "Starting at: (8) (6) (US) (3) (1)?"
    stop_start = gets.chomp
    trip_start = ((subways[:lineL].index(stop_start).to_i).abs - (subways[:lineL].index(2).to_i).abs).abs
end

puts "Would you like to change lines?(Y/N)"
switch = gets.chomp.upcase

if switch == "N"
  case subway_select
    when "6"
      puts "Ending at: (42) (33) (28) (23) (US) (AS)?"
      stop_end = gets.chomp.upcase
      trip_end = (subways[:line6].index(stop_end).to_i).abs - (subways[:line6].index(stop_start).to_i).abs
    when 'N'
      puts "Ending at: (TS) (34) (28) (23N) (US) (8)?"
      stop_end = gets.chomp.upcase
      trip_end = (subways[:lineN].index(stop_end).to_i).abs - (subways[:lineN].index(stop_start).to_i).abs
    when 'L'
      puts "Ending at: (8) (6) (US) (3) (1)?"
      stop_end = gets.chomp.upcase
      trip_end = (subways[:lineL].index(stop_end).to_i).abs - (subways[:lineL].index(stop_start).to_i).abs
  end
else
  puts "Select which line to end at: (6)Line, (N)Line or (L)Line"
subway_select = gets.chomp.upcase
    case subway_select
    when "6"
      puts "Ending at: (42) (33) (28) (23) (US) (AS)?"
      stop_end = gets.chomp.upcase
      trip_end = ((subways[:line6].index(stop_end).to_i).abs - (subways[:line6].index(4).to_i).abs).abs
    when 'N'
      puts "Ending at: (TS) (34) (28) (23N) (US) (8)?"
      stop_end = gets.chomp.upcase
      trip_end = ((subways[:lineN].index(stop_end).to_i).abs - (subways[:lineN].index(4).to_i).abs).abs
    when 'L'
      puts "Ending at: (8) (6) (US) (3) (1)?"
      stop_end = gets.chomp.upcase
      trip_end = ((subways[:lineL].index(stop_end).to_i).abs - (subways[:lineL].index(2).to_i).abs).abs
  end
end

puts trip_end
puts trip_start


if switch == "Y"
  total_stops = (trip_start.to_i + trip_end.to_i).abs
else
  total_stops = (trip_start.to_i + trip_end.to_i).abs
end


puts "Your trip is #{total_stops.to_i} stops long"
