# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Testing user index page', type: :feature do
 
    before(:each) do
      @user = User.create(name: 'John', photo: 'Sirri.png', bio: 'Developer.', posts_counter: 0)

      visit users_path
    end

    it " Show List of users" do
      expect(page).to have_content 'List of users'
    end

    it " Show the name of users" do
      expect(page).to have_content @user.name
    end

    it " Show profile picture" do
      expect(page.first('img')['src']).to have_content @user.photo
    end

    it " Show number of post each user has written" do
      expect(page).to have_content @user.posts_counter
    end

    it "redirect to the clicked link" do
      click_link @user.name
      expect(current_path).to eq user_path(@user.id)
    end

end