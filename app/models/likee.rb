class Likee < ApplicationRecord
  after_save :likees_count
  belongs_to :userr, class_name: 'Userr', foreign_key: 'userr_id'
  belongs_to :postt

  def likees_counter
    postt.update!(:likees_counter)
  end

  private :likees_count
end
