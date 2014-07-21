require 'spec_helper'
require 'rails_helper'

describe Nut do
   it { should belong_to(:user)}
  let(:test_nut) {FactoryGirl.create :nut}


  it "creates a nut that has content" do
    expect(test_nut.content).to eq("my day sucked. I had to parse a broken csv file :(")
  end

  it "returns an array of links for the user." do
    expect(test_nut.url).to be_instance_of(Array)
  end

  it "is invalid without url" do
    @test = Nut.create(url: nil)
    expect{@test.save!}.to(raise_error)
  end
end
