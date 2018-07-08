class AddIndexToUsersEmail < ActiveRecord::Migration[5.2]
  before_save { self.email = email.downcase }
  def change
    add_index :users, :email, unique: true
  end
end
