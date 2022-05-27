class CreateLikees < ActiveRecord::Migration[7.0]
  def change
    create_table :likees do |t|
      t.string :name
      t.references :userr, null: false, foreign_key: true
      t.references :postt, null: false, foreign_key: true
      t.references :author_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
