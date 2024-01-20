require 'rails_helper'

RSpec.describe Comment, type: :model do
  describe 'Comment Model Method test' do
    it 'should update comments_counter after create' do
      user = User.create(name: 'Harry')
      post = Post.create(title: 'Title', author: user)
      comment = Comment.create(text: 'Text', user:, post:)

      comment.send(:update_comments_counter)

      result = post.comments_counter

      expect(result).to eq(1)
    end
  end
end
