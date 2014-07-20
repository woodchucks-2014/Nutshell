require 'spec_helper'
require 'rails_helper'

describe Nut do
   it { should belong_to(:user)}
  let(:test_nut) {FactoryGirl.create :nut}

  it "creates a nut object" do
    expect(test_nut).to be_valid
  end

  it "creates a nut that has content" do
    expect(test_nut.content).to eq "my day sucked. I had to parse a broken csv file :("
  end

  it "returns an array of links for the user." do
    expect(test_nut.url).to be_kind_of Array# You guys should may need modify to suit your needs.
  end
end
