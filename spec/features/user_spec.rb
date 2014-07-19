#borrowed from Ben/Adrian feature test exercise
require 'capybara/rspec'
require 'rails_helper'

feature 'User browsing the website' do
  scenario 'when user visits root path' do
    visit root_path
  end
end

feature 'ability to sign up as a user' do

  scenario 'user fills out sign up form without errors' do
    visit users_path
    click_link 'Sign Up!'
    fill_in 'First name', with: 'Kai'
    fill_in 'username', with: 'KPRT'
    fill_in 'Email', with: 'kai.prout@gmail.com'
    fill_in 'Password', with: 'test'
    fill_in 'Password Confirmation', with: 'test'
    click_button 'Sign Me Up!'

    user = User.find_by_email('kai.prout@gmail.com')

    expect(current_path).to eq(nuts_path)
    expect(page).to have_content("Welcome #{user.first_name}")
  end

  scenario "user fills out form with invalid credentials" do
    visit users_path
    click_link 'Sign Up!'
    fill_in 'First name', with: 'Kai'
    fill_in 'Email', with: 'kai.prout@gmail.com'
    fill_in 'Password', with: 'test'
    fill_in 'Password Confirmation', with: 'test'
    click_button 'Sign Me Up!'

    expect(current_path).to eq(new_user_path)
    expect(page).to have_content('Failed')

  end
end

feature "ability to sign in as a user" do

  let(:user) { FactoryGirl.create :user}

  scenario "existing user fills out form with invalid credentials" do
    visit root_path
    fill_in 'username', with: user.username
    fill_in 'Password', with: user.password
    click_button 'Log In'
    expect(current_path).to eq(nuts_path)
    expect(page).to have_content("Welcome #{user.first_name}")
  end

    scenario "existing user fills out form with invalid credentials" do
      visit root_path
      fill_in 'username', with: user.username
      fill_in 'Password', with: 'test2'
      click_button 'Log In'
      expect(current_path).to eq(users_path)
      expect(page).to have_content("Invalid Credentials")
  end
end














