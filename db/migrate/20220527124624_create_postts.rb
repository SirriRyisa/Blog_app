class CreatePostts < ActiveRecord::Migration[7.0]
  def change
    create_table :postts do |t|
      t.string :title
      t.text :text
      t.integer :commentts_counter
      t.integer :likee_counter
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
