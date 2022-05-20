class Post < ApplicationRecord
  belongs_to :user, class_name: 'User', foreign_key: 'user_id'
  after_save :posts_count
  has_many :comments_comments
  has_many :likes

  def recent_comments
    comments.order(created_at: :desc).limit(10)
  end

  def posts_count
    user.update!(:posts_count)
  end

  private :posts_count
end
