users = [
    { username: "roger", password: "pender"},
    { username: "jon", password: "snow"},
    { username: "hatethe", password: "patriots"},
    { username: "super", password: "bowl"},
    { username: "wow", password: "rams"}
]

def auth_user(username, password, list_of_users)
    list_of_users.each do |user_record|
        if user_record[:username] == username && user_record[:password] == password
            return user_record
        end
    end
    "Credentials were not correct"
end

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

authentication = auth_user(username, password, users)
puts authentication

puts "Press n to quit or any other key to continue: "
input = gets.chomp.downcase

break if input == "n"

attempts += 1
end
puts "You tried too many times, goodbye" if attempts == 4