class DropLikees < ActiveRecord::Migration[7.0]
  def change
    drop_table :likees
  end
end
