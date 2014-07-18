require 'spec_helper'
require 'rails_helper'

describe Comment do
  let(:user) {FactoryGirl.create :user}
  let(:comment) {FactoryGirl.create :comment}

  it "creates a comment with text" do

    expect(comment.content).to eq "lol parsing csv is the worst. u must be super smart and kool though, let's hang out and drink fernet branca soon."
  end

  it "correctly links a comment with a user." do
    expect(comment.user.id).to eq user.id
  end
end
