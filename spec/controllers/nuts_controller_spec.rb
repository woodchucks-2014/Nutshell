require 'rails_helper'

RSpec.describe NutsController, :type => :controller do
  describe "When existing user is logged in" do
    it "hitting create button takes you to create Nutshell page" do
      get :new
      expect(:response).to render_template(:new)
    end

    it "does something" do

    end

  end
end
