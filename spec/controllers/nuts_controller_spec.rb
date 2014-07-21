require 'rails_helper'

describe NutsController, :type => :controller do

  describe "GET #index" do
    it "renders the :index page, which displays all Nutshells" do
    pending "does not work"
      get :index
      expect(response).to render_template :index
    end
  end

  describe "GET #new" do
    it "renders the :new Nutshell template" do
      get :new
      expect(response).to render_template :new
    end
  end

  describe "POST #create" do
    it "save a new Nutshell in the database with valid attributes" do
    pending "WIP - off to user controller specs"
      @user = User.new(first_name: 'Test', username: 'tests',
                        email: "test@test.com", password: "test", password_confirmation: "test")
      @nut = Nut.create(content: "Test content", url: ["www.hello.com"], user_id: @user.id)
      expect {
        post :create, :nut => @nut
      }.to change(Nut, :count).by(1)
    end
  end
end
