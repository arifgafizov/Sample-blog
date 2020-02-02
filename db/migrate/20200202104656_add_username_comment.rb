class AddUsernameComment < ActiveRecord::Migration[6.0]
  def change
      add_column :comments, :username, :string
      add_index :comments, :username, unique: true
  end
end
