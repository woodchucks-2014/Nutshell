require 'spec_helper'
require 'rails_helper'


RSpec.describe User, :type => :model do
  let(:user) {User.create(first_name: "test", email: "test@test.com",
                          username: "testy", password: "test")}

  it "creates a user with a first name, email, username, and password" do
    expect(user).to be_instance_of(User)
  end
  context "validations"
    xit "creates a user with a valid email address"
    xit "raises an error when first name is not included"
    xit "raises an error when email is not included"
    xit "raises an error when password is not included"
    xit "does not allow profanity to be used in first name field"

end
