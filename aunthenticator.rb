users = [
    { username: "roger", password: "pender"},
    { username: "jon", password: "snow"},
    { username: "hatethe", password: "patriots"},
    { username: "super", password: "bowl"},
    { username: "wow", password: "rams"}
]

puts "This is my simple authenticator"
25.times { print "-" }
puts
puts "Please enter a valid username and password"

attempts = 1

while attempts < 4

print "Username: "
username = gets.chomp

print "Password: "
password = gets.chomp

users.each do |user|
    if user[:username] == username && user[:password] == password
        puts user

    else 
        puts "Credentials were not correct"
end


puts "Press n to quit or any other key to continue: "
input = gets.chomp.downcase

break if input == "n"

attempts += 1
end