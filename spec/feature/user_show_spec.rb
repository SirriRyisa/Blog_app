# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Testing user index page', type: :feature do
 
    before(:each) do
      @user = User.create(name: 'John', photo: 'Sirri.png', bio: 'Developer.', posts_counter: 0)
      @post = Post.create(user_id: @user.id, title: 'Hello', text: 'This is my test post', comments_counter: 0, likes_counter: 0)

      visit user_path(@user.id)
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

    it "Show bio " do
      expect(page).to have_content @user.bio
    end

    it "Show user post " do
      expect(page).to have_content 'This is my test post'
    end

    it "Show button that let me see all user posts" do
      expect(page).to have_content 'See all posts'
    end

    it "redirect to all posts" do
      click_link 'See all posts'
      expect(current_path).to eq user_posts_path(@user.id)
    end 

end