class AddReferenceToLikees < ActiveRecord::Migration[7.0]
  def change
    add_column :likees, :name, :string
    add_reference :likees, :userr, null: false, foreign_key: true
    add_reference :likees, :postt, null: false, foreign_key: true
  end
end
