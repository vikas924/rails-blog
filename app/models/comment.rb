class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post

  attribute :text, :text

  after_create :update_comments_counter
  after_destroy :update_comments_counter
  after_save :update_comments_counter

  private

  def update_comments_counter
    post.update(comment_counter: post.comments.count)
  end
end
