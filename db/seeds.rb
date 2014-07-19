# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

10.times do
  p User.create(
              first_name: Faker::Name.first_name,
              username: Faker::Internet.user_name,
              email: Faker::Internet.email,
              password: "password",
              password_confirmation: "password"
              )
end

def random_user
  user_count = User.all.length
  array = [*1..user_count]
  array.sample
end

def generate_image_array
  array = []
  5.times do
    array <<Faker::Avatar.image
  end
  array
end

10.times do
  Nut.create(content: Faker::Lorem.sentence,
            user_id: random_user,
            url: generate_image_array
            )
end
