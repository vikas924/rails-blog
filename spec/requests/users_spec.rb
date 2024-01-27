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
      expect(response.body).to include('Users')
    end
  end

  describe 'GET /show' do
    it 'returns http success' do
      get users_path(1)
      expect(response).to have_http_status(:success)
    end

    it 'returns http success' do
      # Create a user instance using ActiveRecord
      user = User.create(name: 'John Doe')
      # Use the created user in your test
      get user_path(user)
      expect(response).to render_template(:show)
    end

    it 'includes correct placeholder text in the response body' do
      get user_path(1)
      expect(response.body).to include('see all posts')
    end
  end
end
