require 'rails_helper'

RSpec.describe NutsController, :type => :controller do

  describe "GET #index" do
    it "renders the :index page, which displays all Nutshells" do
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
    context "with valid attributes" do
      it "save a new Nutshell in the database" do
        expect{
          post :create, nut: attributes_for(:nut)
        }.to change(Nut, :count).by(1)

      end
    end
  end
end
