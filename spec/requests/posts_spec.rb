require 'rails_helper'

RSpec.describe 'Posts', type: :request do
  user = User.create(name: 'John Doe')
  post = Post.create(title: 'Title', author: user)
  describe 'GET /index' do
    it 'returns http success' do
      get user_posts_path(user)
      expect(response).to have_http_status(:success)
    end

    it 'returns http success' do
      get user_posts_path(user)
      expect(response).to render_template(:index)
    end

    it 'includes correct placeholder text in the response body' do
      get posts_path
      expect(response.body).to include('Posts')
    end
  end

  describe 'GET /show' do
    it 'returns http success' do
      get post_path(post)
      expect(response).to have_http_status(:success)
    end

    it 'returns http success' do
      get post_path(post)
      expect(response).to render_template(:show)
    end

    it 'includes correct placeholder text in the response body' do
      get post_path(post)
      expect(response.body).to include('Title')
    end
  end
end
