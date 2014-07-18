require 'spec_helper'
require 'rails_helper'

describe Nut do
  let(:test_nut) {Nut.create(content: "Test nut", url: "www.nut.eat")}

  it "creates a nut with either text or a photo url" do
    expect(test_nut).to be_instance_of(Nut)
  end
end
