#***MTA Project***

puts "Select: (6)Line, (N)Line or (L)Line"
subway_select = gets.chomp

case subway_select
  when "6"
    puts "Starting at: (42) (33) (28) (23) (US) (AS)?"
    stop_select = gets.chomp
  when N puts "Starting at: (TS) (34) (28) (23N) (US) (8)?"
  when L puts "Starting at: (8) (6) (US) (3) (1)?"
end


six = ["42", "33", "28", "23", "US", "AS"]
N = ["TS", "34", "28", "23N", "US", "8"]
L = ["8", "6", "US", "3", "1"]

subway = {(six), (N), (L)}


