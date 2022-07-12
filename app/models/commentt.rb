class Commentt < ApplicationRecord
  belongs_to :user, class_name: 'User', foreign_key: 'user_id'
  belongs_to :post
  after_save :comments_count

  def commentts_count
    post.update!(:commentts_counter)
  end

  private :commentts_count
end
