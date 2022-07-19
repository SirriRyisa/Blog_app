require 'rails_helper'

RSpec.describe 'Testing user index page', type: :feature do
  describe 'GET index' do
    before(:each) do
      @first_user = User.create(name: 'Sirri', photo: 'Sirri.png', bio: 'Developer.')
      @second_user = User.create(name: 'Ruth', photo: 'Ruth.png', bio: 'Doctor.')
      @third_user = User.create(name: 'Levy', photo: 'Levy.jpg', bio: 'Fullstack Developer.')
    end

    scenario 'shows the right content' do
      visit users_path
      sleep(5)
      expect(page).to have_content('All users')
    end

    feature 'User Index' do
      background { visit users_path }
      scenario 'See all usernames' do
        expect(page).to have_content('Sirri')
        expect(page).to have_content('Ruth')
        expect(page).to have_content('Levy')
      end

      scenario 'See the number of posts each user has written' do
        expect(page).to have_content('Number of posts: 0')
      end

      # scenario 'See profile picture for each user' do
      #     expect(page.first('img')['src']).to have_content 'Tom.png'
      # end

      # scenario "When I click on a user, I am redirected to that user's show page" do
      #     click_link 'Tom', match: :first
      #     expect(current_path).to eq user_path(User.first.id)
      # end
    end
  end
end
