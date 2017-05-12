require 'random_data'
require 'faker'
 # Create Users
 10.times do
   user = User.create!(
   username:     RandomData.random_name,
   email:    Faker::Internet.email,
   password: RandomData.random_sentence,
   userid:   Faker::Number.between(1, 10))
 users = User.all
end
