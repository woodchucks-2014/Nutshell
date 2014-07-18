require 'spec_helper'
require 'rails_helper'


describe User do
  let(:user) {FactoryGirl.create :user}

  it "creates a user with a first name, email, username, and password" do
    expect(user).to be_instance_of(User)
  end
  context "validations"

    it "creates a user with a valid email address" do
      @user = FactoryGirl.build(:user, email: "lol")
      expect{@user.save!}.to raise_error #Bang here returns an error.
    end

    it "raises an error if user password and confirmation do not pass." do
      @user = FactoryGirl.build(:user, password: "lol")
      expect{@user.save!}.to raise_error
    end

    xit "does not allow profanity to be used in first name field" do
      # pending "Just in case we have time to implement this"
    end
end
