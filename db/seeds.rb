# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

10.times do
  User.create(
              first_name: Faker::Internet.first_name,
              username: Faker::Internet.username,
              email: Faker::Internet.email
              password: "password"
              )
end

random_user = rand(User.count)

10.times do
  Nut.create(content: Faker::Lorem.sentence,
            user_id:
            url: [] << Faker::Avatar.image
            )
end
