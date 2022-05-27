class Postt < ApplicationRecord
  belongs_to :userr, class_name: 'Userr', foreign_key: 'userr_id'
  after_save :postts_count
  has_many :commentts_comments
  has_many :likees

  def recent_commentts
    comments.order(created_at: :desc).limit(10)
  end

  def postts_count
    userr.update!(:postts_count)
  end

  private :postts_count
end
