require 'spec_helper'
require 'rails_helper'

describe Comment do
  # let(:comment) {FactoryGirl.create :comment}

  it "creates a comment with text" do
    @comment = FactoryGirl.create(:comment)
    expect(@comment.content).to eq "lol parsing csv is the worst. u must be super smart and kool though, let's hang out and drink fernet branca soon."
  end
end
