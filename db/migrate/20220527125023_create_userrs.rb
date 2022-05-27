class CreateUserrs < ActiveRecord::Migration[7.0]
  def change
    create_table :userrs do |t|
      t.string :name
      t.string :photo
      t.text :bio
      t.integer :postts_counter

      t.timestamps
    end
  end
end
