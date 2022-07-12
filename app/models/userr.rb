class Userr < ApplicationRecord
  has_many :postts, foreign_key: 'userr_id'
  has_many :commentts, foreign_key: 'userr_id'
  has_many :likees, foreign_key: 'userr_id'

  def latest_three_post
    postts.order(created_at: :desc).limit(3)
  end
end
