def take_a_number (katz_deli, new_person)
  katz_deli.length
end

def now_serving(katz_deli)
  puts "Currently serving #{katz_deli.first}"
  line(katz_deli).shift
end

katz_deli = []

take_a_number(katz_deli, "Ada") #=> "1"
take_a_number(katz_deli, "Grace") #=> "2"
take_a_number(katz_deli, "Kent") #=> "3"

line(katz_deli) #=> "The line is currently: 1. Ada 2. Grace 3. Kent"
line(katz_deli)["Ada","Grace","Kent"]

now_serving(katz_deli) #=> "Currently serving Ada"

line(katz_deli) #=> "The line is currently: 1. Grace 2. Kent"

take_a_number(katz_deli, "Matz") #=> "3"

line(katz_deli) #=> "The line is currently: 1. Grace 2. Kent 3. Matz"

now_serving(katz_deli) #=> "Currently serving Grace"

line(katz_deli) #=> "1. Kent 2. Matz"
  