FactoryGirl.define do
  factory :user do
    first_name "Joe"
    username "Joe123"
    email {Faker::Internet.email}
    password "password"
    password_confirmation "password"
  end

  factory :nut do
    content "my day sucked. I had to parse a broken csv file :("
    url "https://secure.gravatar.com/avatar/" #Probably need to change this.
    user
  end

  factory :comment do
    content "lol parsing csv is the worst. u must be super smart and kool though, let's hang out and drink fernet branca soon."
    user
  end
end
