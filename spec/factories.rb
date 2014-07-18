FactoryGirl.define do
  factory :user do
    first_name "Joe"
    email {Faker::Internet.email}
    password "password"
  end

  factory :nut do
    content "my day sucked. I had to parse a broken csv file :("
    url "www.google.com" #Probably need to change this.
    user
  end

  factory :comment do
    content "lol parsing csv is the worst. u must be super smart and kool though, let's hang out and drink fernet branca soon."
    association :commenter, factory: :user, strategy: :build
  end
end
