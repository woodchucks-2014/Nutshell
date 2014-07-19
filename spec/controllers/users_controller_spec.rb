require 'rails_helper'

RSpec.describe UsersController, :type => :controller do

  describe "GET #new User" do
    it "renders the new user page" do
      get :new
      expect(response). to render_template :new
    end
  end

  describe "Get #show User page" do

    let(:user) { FactoryGirl.create :user}
    it "hitting one's own username takes them to profile page" do
      pending "Not sure if I even need to test this"
      get :show
      expect(response).to render_template(user_path(@user.id))
    end
  end
end
