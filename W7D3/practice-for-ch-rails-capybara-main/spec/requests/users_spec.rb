require 'rails_helper'

RSpec.describe "Users", type: :request do

  describe "GET /users/new (#new)" do
    it "renders the new template" do
      get new_user_url
      expect(response.body).to include("Sign Up!")
    end
  end

  describe "POST /users (#create)" do
    context "with invalid params" do
      it "validates the presence of the user's email" do
        post users_url, params: { user: { email: "" , password: "abcdefg" } }
        expect(response.body).to include("Email can&#39;t be blank")
      end

      it "validates that the password is at least 6 characters long" do
        post users_url, params: { user: { email: "abcd@gmail.com" , password: "abcd" } }
        expect(response.body).to include("Password is too short (minimum is 6 characters)")
      end
    end

    context "with valid params" do
      it "redirects user to root page on success" do
        post users_url, params: { user: { email: "abcd@gmail.com" , password: "abcdefg" } }
        expect(response.status).to eq(302)
        expect(response.redirect_url).to eq("http://www.example.com/")
      end
    end
  end
end
