class AddPasswordFieldToUsers < ActiveRecord::Migration
  def change
    add_column :users, :password_digest, :string, :after => 'email'
  end
end
