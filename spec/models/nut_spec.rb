require 'spec_helper'
require 'rails_helper'

describe Nut do
   it { should belong_to(:user)}
  let(:test_nut) {FactoryGirl.create :nut}

  it "creates a nut object" do
    expect(test_nut).to be_instance_of(Nut)
  end

  it "creates a nut that has content" do
    expect(test_nut.content).to eq "my day sucked. I had to parse a broken csv file :("
  end

  it "returns a valid url" do
    expect(test_nut.url).to eq "www.google.com" #This most likely is not an accurate test. You guys should modify to suit your needs.
  end
end
