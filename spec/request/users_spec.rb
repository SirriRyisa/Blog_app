require 'rails_helper'

RSpec.describe 'User', type: :request do
  describe 'GET #index' do
    before(:each) { get users_path }

    it 'a successful request' do
      expect(response).to have_http_status(:ok)
    end

    it 'renders the index template' do
      expect(response).to render_template(:index)
    end

    it 'should render the placeholder text' do
      expect(response.body).to include('List of all users')
    end

    it 'does not render a different template' do
      expect(response).to_not render_template(:new)
    end
  end

  describe 'GET #show' do
    before(:each) { get user_path(29) }

    it 'a successful request' do
      expect(response).to have_http_status(:ok)
    end

    it 'render the show template' do
      expect(response.body).to include('User Details')
    end

    it 'does not render a different template' do
      expect(response).to_not render_template(:index)
      expect(response).to_not render_template(:new)
    end
  end
end
