require 'rails_helper'

RSpec.describe 'Users', type: :request do
  describe 'GET /index' do
    it 'returns http success' do
      get users_path
      expect(response).to have_http_status(:success)
    end

    it 'returns http success' do
      get users_path
      expect(response).to render_template(:index)
    end

    it 'includes correct placeholder text in the response body' do
      get users_path
      expect(response.body).to include('This is the index file for testing')
    end
  end

  describe 'GET /show' do
    it 'returns http success' do
      get user_path(1)
      expect(response).to have_http_status(:success)
    end

    it 'returns http success' do
      get user_path(1)
      expect(response).to render_template(:show)
    end

    it 'includes correct placeholder text in the response body' do
      get user_path(1)
      expect(response.body).to include('This is the show user section for testing')
    end
  end
end
