require 'rails_helper'

RSpec.describe "Auths", type: :system do
  before do
    driven_by(:rack_test)
  end

  describe "the signup process" do
    it "has a new user page" do
      visit new_user_url
      expect(page).to have_content "New User"
    end

    it "redirects to the root page after signup" do
      visit new_user_url
      fill_in "Email", with: "bill@gmail.com"
      fill_in "Password", with: "password"
      click_on "Sign Up"
      expect(page).to have_content "Logged in as: bill@gmail.com"
    end

    it "re-renders the sign-up page after a failed sign-up attempt" do
      visit new_user_url
      fill_in "Email", with: "bill@gmail.com"
      fill_in "Password", with: "abc"
      click_on "Sign Up"
      expect(page).to have_content "Password is too short (minimum is 6 characters)"
      
    end
  end
end
