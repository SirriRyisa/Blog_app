class Like < ApplicationRecord
  after_save :likes_count
  belongs_to :user, class_name: 'User', foreign_key: 'user_id'
  belongs_to :post

  def likes_counter
    post.update!(:likes_counter)
  end

  private :likes_count
end
