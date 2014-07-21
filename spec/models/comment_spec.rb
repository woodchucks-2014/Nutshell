require 'spec_helper'
require 'rails_helper'
require 'shoulda/matchers'

describe Comment do
  it { should belong_to(:user)}
  it { should belong_to(:nut)}

  let(:comment) {FactoryGirl.create :comment}



  it "creates a comment with text" do
    expect(comment.content).to eq "lol parsing csv is the worst. u must be super smart and kool though, let's hang out and drink fernet branca soon."
  end

  it "is invalid if comment is created without content" do
    comment = FactoryGirl.build(:comment, content: nil)
    expect{comment.save!}.to raise_error
  end
end
