class AddDetailsToPostts < ActiveRecord::Migration[7.0]
  def change
    add_column :postts, :author, :string
  end
end
