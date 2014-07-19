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
    fill_in 'First name', with: 'Ben'
    fill_in 'username', with: 'RJNY'
    fill_in 'Email', with: 'ben.brostoff@gmail.com'
    fill_in 'Password', with: 'test'
    fill_in 'Password Confirmation', with: 'test'
    click_button 'Sign Me Up!'

    user = User.find_by_email('ben.brostoff@gmail.com')

    expect(current_path).to eq(user_path(user))
    expect(page).to have_content("Successful log in!")
  end

  scenario "can click on titles of recent posts and should be on the post show page" do
    pending
    # given a user and a list of posts
    # user visits the homepage
    # when a user can clicks on a post title they should be on the post show page
  end
end

context "post show page" do
  it "sees title and body of the post" do
    pending
    # given a user and post(s)
    # user visits the post show page
    # user should see the post title
    # user should see the post body
  end
end
