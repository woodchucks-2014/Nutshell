require 'spec_helper'
require 'rails_helper'

describe Nut do
   it { should belong_to(:user)}
  let(:test_nut) {FactoryGirl.create :nut}

  it "creates a nut object" do
    expect(test_nut).to be_instance_of(Nut)
  end

  it "creates a nut that "
end
