class DropPostts < ActiveRecord::Migration[7.0]
  def change
    drop_table :postts
  end
end
