require 'rails_helper'

RSpec.describe 'post', type: :request do
  describe 'GET #index' do
    before(:each) do
      get '/users/29/posts'
    end

    it 'a successful request' do
      expect(response).to have_http_status(:ok)
    end

    it 'renders the index template' do
      expect(response).to render_template(:index)
    end

    it 'should render the placeholder text' do
      expect(response.body).to include('List of all posts')
    end

    it 'does not render a different template' do
      expect(response).not_to render_template(:new)
      expect(response).not_to render_template(:show)
    end
  end

  describe 'GET #show' do
    before(:each) do
      get '/users/29/posts/1'
    end

    it 'a successful request' do
      expect(response).to have_http_status(:ok)
    end

    it 'render the show template' do
      expect(response).to render_template(:show)
    end

    it 'get the contents in the user show page' do
      expect(response.body).to include('Post Details')
    end

    it 'does not render a different template' do
      expect(response).to_not render_template(:index)
      expect(respons).to_not render_template(:new)
    end
  end
end
