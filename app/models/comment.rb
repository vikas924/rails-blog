class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post

  attribute :text, :text

  after_create :update_posts_counter
  after_destroy :update_posts_counter

  def update_posts_counter
    post.update(comments_counter: post.comments.count)
  end
end
