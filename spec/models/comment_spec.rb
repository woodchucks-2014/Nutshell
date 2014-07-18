require 'spec_helper'
require 'rails_helper'

describe Comment do
  let(:comment) {FactoryGirl.create :commenter}

  it "creates a comment with text" do
    expect(comment).to be_instance_of(Comment)
  end
end
