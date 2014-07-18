require 'spec_helper'

RSpec.describe Nut, :type => :model do
  let(:test_nut) {Nut.create(content: "Test nut", url: "www.nut.eat")}

  it "creates a nut with either text or a photo url" do

  end
end
