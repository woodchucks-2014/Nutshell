require 'spec_helper'
require 'rails_helper'


describe User do
  let(:user) {FactoryGirl.create :user}
  # let(:bad_email) {User.create(first_name: "test", email: "test.com",
  #                         username: "testy", password: "test")}

  it "creates a user with a first name, email, username, and password" do
    expect(user).to be_instance_of(User)
  end
  context "validations"
    # it "creates a user with a valid email address" do
    #   pending "Not working as of now"
    #   expect{bad_email}.to raise_error
    # end

    xit "does not allow profanity to be used in first name field" do
      # pending "Just in case we have time to implement this"
    end
end
