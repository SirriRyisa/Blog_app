class Commentt < ApplicationRecord
  belongs_to :userr, class_name: 'Userr', foreign_key: 'userr_id'
  belongs_to :postt
  after_save :commentts_count

  def commentts_count
    post.update!(:commentts_counter)
  end

  private :commentts_count
end
